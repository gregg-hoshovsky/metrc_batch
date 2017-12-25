<?php 
error_reporting(E_ALL);
ini_set('display_errors', true);
ini_set('html_errors', false);
// HTTP authentication

$_POST['email']='admin_clientX@a.com';
#$_POST['email']='admin@a.com';

if (gethostname() == 'shared2.accountservergroup.com')
{
    $basePath = '/home1/eksanaly/git_source/metrc_include';
    $webpath="";
}else{
    $basePath = '/Users/greggh/git/metrc_include';
    $webpath="/metrc/v2";
}

include_once $basePath .'/license_batch.php';

$pdo = Database::connect();


#$_SESSION['license']='010-X0001';
$_SESSION['license']='020-X0002';
$FACILITY_LICENSE=$_SESSION['license'];

$json_M = file_get_contents('./transferLoad1.json');



$json_M = str_replace("{Id}","4011",$json_M);
$json_M = str_replace("{ShipperFacilityLicenseNumber}","020-X0002",$json_M);
$json_M = str_replace("{RecipientFacilityLicenseNumber1}","050 10044860EA3",$json_M);
$json_M = str_replace("{RecipientFacilityLicenseNumber2}","050 1000071214D",$json_M);
$json_M = str_replace("{RecipientFacilityLicenseNumber3}","050 1002568A92C",$json_M);

//print $json_M ;
$mani = json_decode($json_M);
$manifestList = $mani->manifestList;

foreach ($manifestList as $mainfestItem) {
//    echo $mainfestItem->ManifestNumber. "\n" ;
//    echo $mainfestItem->ShipperFacilityLicenseNumber. "\n" ;
    
    $sql = createDeliverySql('audit_transfers_outgoing' , $mainfestItem);
   // print "------SQL outgoing:$sql\n";
    print "$sql\n";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    print_r($stmt->errorInfo());print("error code ".$stmt->errorCode() ."\n");
    
    $recipientList = $mainfestItem->RecipientList;
    foreach ($recipientList as $recipentItem) {
       // echo "\t". $recipentItem->RecipientFacilityName. "\n" ;
        $packageList = $recipentItem->PackageList;
        
        $sql = createDeliverySql('transfers' , $recipentItem, $mainfestItem->ManifestNumber);
        print "$sql\n";
        
        $stmt = $pdo->prepare($sql);
        $stmt->execute();
        print_r($stmt->errorInfo());print("error code ".$stmt->errorCode() ."\n");
        //print "\t-------SQL transfers: $sql\n";

        foreach ($packageList as $packageItem) {
           // echo "\t\t". $packageItem->PackageLabel. "\n" ;
            $sql = createDeliverySql('transfer_packages' , $packageItem ,$mainfestItem->ManifestNumber,$recipentItem->RecipientFacilityLicenseNumber );
            //print "\t\t------SQL transfer_packages: $sql\n";
            print "$sql\n";
            $stmt = $pdo->prepare($sql);
            $stmt->execute();
            print_r($stmt->errorInfo());print("error code ".$stmt->errorCode() ."\n");
            
        }
    }
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
