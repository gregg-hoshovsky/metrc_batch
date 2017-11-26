<?php 


error_reporting(E_ALL);
ini_set('display_errors', true);
ini_set('html_errors', false)
// HTTP authentication

$_POST['email']='admin@a.com';
if (gethostname() == 'shared2.accountservergroup.com')
{
    $basePath = '/home1/eksanaly/git_source/metrc_include';
    $webpath="";
}else{
    $basePath = '/Users/greggh/git/metrc_include';
    $webpath="/metrc/v2";
}


$_POST['email']='admin@a.com';
include_once $basePath .'/license_batch.php';



$_SESSION['license']='010-X0001';
$FACILITY_LICENSE=$_SESSION['license'];



$pdo = Database::connect();

$API_TYPE = "transfers";
$API_CMD= "outgoing";

$ch=foobar($FACILITY_LICENSE,$API_TYPE,$API_CMD);
list($httpCode,$results )=  process_foo_bar($ch);




print"----outgoing transfers licensse ". $FACILITY_LICENSE ." httpCode ". $httpCode ."\n";
if ($results != null)
{
    $data = array();
    foreach ($results as $result)
    {
        foreach ($result as $key => $value) {
            print("\t". $key . ":\t". $value  . "\n");
        }
       $sql = createDeliverySql('audit_transfers_outgoing' , $result);     
       print "$sql\n";
       $stmt = $pdo->prepare($sql);
       $stmt->execute();
   

       $ch=foobar($FACILITY_LICENSE,'transfers',$result->{'Id'}.'/deliveries');
       list($httpCode,$r_deliveries)=  process_foo_bar($ch);
       print"----\toutgoing transfers deliveries id ". $result->{'Id'} ." httpCode ". $httpCode ."\n";
       foreach ($r_deliveries as $rX)
       {
 //          print "---\n----\n-----\nRecipientFacilityName---->".$rX->{'RecipientFacilityName'} . "\n";
          foreach ($rX as $key => $value) {
               print("\t\t". $key . ":\t". $value  . "\n");
           }
          $sql = createDeliverySql('transfers' , $rX);
          print "$sql\n";
          $stmt = $pdo->prepare($sql);
          $stmt->execute();
           $ch=foobar($FACILITY_LICENSE,'transfers','delivery',$rX->{'Id'}.'/packages');
           list($httpCode,$r_packages )=  process_foo_bar($ch);
           $lastId = $pdo->lastInsertId();
           print"----\t\toutgoing transfers deliveries packages ".$rX->{'Id'} ." httpCode ". $httpCode ." last id code $lastId\n";
           foreach ($r_packages as $r)
           {
               foreach ($r as $key => $value) {
                   print("\t\t\t". $key . ":\t". $value  . "\n");
                   
               }
               $sql = createDeliverySql('transfer_packages' , $r ,$lastId);
               print "$sql\n";
               $stmt = $pdo->prepare($sql);
               $stmt->execute();
  
           }
           
       }
    }
Database::disconnect();
}
////////////////
function createDeliverySql($table , $result, $linkid=null)
{
    print ($linkid);
    $sql = "INSERT INTO $table (";
    $values = " VALUES (";
    if( $linkid != null)
    {
        $sql .= "transfers_id ,";
    }
    if( $linkid != null)
    {
        $values .= " $linkid ,";
    }

    foreach ($result as $key => $value) {
        //   print($key . ":\t". $value  . "\n");
        $sql .="$key , ";
        if ($key == 'LastModified'
            ||$key == "CreatedDateTime"
            ||$key == "EstimatedDepartureDateTime"
            ||$key == "EstimatedArrivalDateTime"
            ||$key == "ActualArrivalDateTime"
            ||$key == "ActualDepartureDateTime"
            ||$key == "ReceivedDateTime"
  
            )
            
        {
        //    print ">$value<\n";
            if( $value == '0001-01-01T00:00:00.000' || $value == '')
            {
                $values .=" null , ";

            }else{
                
                $output = preg_split( "/(T|\+|\.)/",$value );
            //    print_r($output);
                $utc_date = DateTime::createFromFormat('Y-m-d H:i:s', $output[0]. ' ' . $output[1],new DateTimeZone('UTC'));
                $la_date = $utc_date;
                $la_date->setTimeZone(new DateTimeZone('America/Los_Angeles'));
                $value=   $la_date->format('Y-m-d h:i:s') ;
               // echo 'la' .$value ."\n";
                
                $values .=" '$value' , ";
            }
            
        }else{
            if($key  == 'ReceivedQuantity')
            {
                if($value == '')
                    $value=0;
            }
            $values .=" '$value' , ";
        }
        
    }
    $sql = rtrim($sql, ', ') . ")";
    $values = rtrim($values, ', ') . ")";
    
    
    $sql = $sql . $values;
    return $sql;
    
   
}
/////////////////

?> 

