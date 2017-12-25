<?php 
error_reporting(E_ALL);
ini_set('display_errors', true);
ini_set('html_errors', false);
// HTTP authentication

#$_POST['email']='admin@a.com';
$_POST['email']='admin_clientX@a.com';

if (gethostname() == 'shared2.accountservergroup.com')
{
    $basePath = '/home1/eksanaly/git_source/metrc_include';
    $webpath="";
}else{
    $basePath = '/Users/greggh/git/metrc_include';
    $webpath="/metrc/v2";
}

include_once $basePath .'/license_batch.php';



#$_SESSION['license']='010-X0001';
$_SESSION['license']='020-X0002';
$FACILITY_LICENSE=$_SESSION['license'];



$pdo = Database::connect();

$API_TYPE = "transfers";
$API_CMD= "outgoing";

$ch=foobar($FACILITY_LICENSE,$API_TYPE,$API_CMD);
list($httpCode,$results )=  process_foo_bar($ch);


$stmt = $pdo->prepare('delete from audit_transfers_outgoing');
$stmt->execute();
$stmt = $pdo->prepare('delete from transfers');
$stmt->execute();
$stmt = $pdo->prepare('delete from transfer_packages');
$stmt->execute();

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
       print_r($pdo->errorInfo());print("error code ".$stmt->errorCode() ."\n");

       $ch=foobar($FACILITY_LICENSE,'transfers',$result->{'Id'}.'/deliveries');
       list($httpCode,$r_deliveries)=  process_foo_bar($ch);
       print"----\toutgoing transfers deliveries id ". $result->{'Id'} ." httpCode ". $httpCode ."\n";
       foreach ($r_deliveries as $rX)
       {
 //          print "---\n----\n-----\nRecipientFacilityName---->".$rX->{'RecipientFacilityName'} . "\n";
          foreach ($rX as $key => $value) {
               print("\t\t". $key . ":\t". $value  . "\n");
           }
          $sql = createDeliverySql('transfers' , $rX, $result->{'ManifestNumber'});
          print "$sql\n";
          $stmt = $pdo->prepare($sql);
          $stmt->execute();
              print_r($pdo->errorInfo());print("error code ".$stmt->errorCode() ."\n");
              
              
           $ch=foobar($FACILITY_LICENSE,'transfers','delivery',$rX->{'Id'}.'/packages');
           list($httpCode,$r_packages )=  process_foo_bar($ch);
         //  $lastId = $pdo->lastInsertId();
           print"----\t\toutgoing transfers deliveries packages ".$rX->{'Id'} ." httpCode ". $httpCode ." last id code $lastId\n";
           foreach ($r_packages as $r)
           {
               foreach ($r as $key => $value) {
                   print("\t\t\t". $key . ":\t". $value  . "\n");
                   
               }
               $sql = createDeliverySql('transfer_packages' , $r ,$result->{'ManifestNumber'},$rX->RecipientFacilityLicenseNumber );
               print "$sql\n";
               $stmt = $pdo->prepare($sql);
               $stmt->execute();
                   print_r($pdo->errorInfo());print("error code ".$stmt->errorCode() ."\n");
  
           }
           
       }
    }
Database::disconnect();
}
////////////////
function createDeliverySql($table , $result, $ManifestNumber=null, $RecipientFacilityLicenseNumber=null)
{
    //  print ($linkid);
    $sql = "INSERT INTO $table (";
    $values = " VALUES (";
    if( $ManifestNumber != null)
    {
        $ManifestNumber = addslashes($ManifestNumber) ;
        $sql .= "ManifestNumber ,";
        $values .= " '$ManifestNumber' ,";
    }
    if( $RecipientFacilityLicenseNumber != null)
    {
        $RecipientFacilityLicenseNumber = addslashes($RecipientFacilityLicenseNumber) ;
        $sql .= "RecipientFacilityLicenseNumber ,";
        $values .= " '$RecipientFacilityLicenseNumber' ,";
    }
    
    foreach ($result as $key => $value) {
        //   print($key . ":\t". $value  . "\n");
        if ($key == 'RecipientList'
            || $key == 'PackageList' )
            break;
            
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
           // print "$key VAL $value<";
            $value = addslashes($value) ;
            $values .=" '$value' , ";
        }
        
    }
    $sql .= " createdOn )";
//        $sql = rtrim($sql, ', ') . ")";
 //   $values = rtrim($values, ', ') . ")";
    $values .= " UTC_TIMESTAMP() )";
    
    
    $sql = $sql . "\n" . $values;
    return $sql;
    
    
}
/////////////////

?> 

