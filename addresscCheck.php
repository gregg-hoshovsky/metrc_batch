<?php
// HTTP authentication


include "database.php";


$pdo = Database::xChangeConnect();
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$sql = "SELECT `id`,`NAME`, `POSTAL_CITY`, `COUNTY`, `STREET_ADDRESS`, `ZIP`, `state` FROM `Customer` where placeid = ''";
$q = $pdo->prepare($sql);
$q->execute(array( ));

$sqlUpdate = "update Customer set placeid =?, lat = ?, lng = ? where id = ?";
$update = $pdo->prepare($sqlUpdate);
print_r($pdo->errorInfo());



$returnRows = $q->fetchAll(PDO::FETCH_ASSOC);
for($i=0;$i<count($returnRows);$i++)
{
    $city= $returnRows[$i]['POSTAL_CITY'];
    $street= $returnRows[$i]['STREET_ADDRESS'];
    $state= $returnRows[$i]['state'];
    $zip= $returnRows[$i]['ZIP'];
    $id= $returnRows[$i]['id'];
    print "id: $id, street: $street , $city, $state,zip: $zip \n";
    list($httpCode,$placeId,$lat,$lng) = googleGeoCoding($street,$city,$state,$zip); 
    print "httpCode: $httpCode ,placeId : $placeId, lat: $lat,lng: $lng \n";
    if( $httpCode == 200 )
    {
        $update->execute(array($placeId,$lat,$lng,$id  ));
        print_r($pdo->errorInfo());
    }else{
     print 'Error in GOOGLE return';   
    }
}
//print_r($returnRows);
Database::disconnect();
die;

list($httpCode,$placeId,$lat,$lng) = googleGeoCoding('210 W. WASHINGTON ST.','HUNTINGTON','OR','97907');

print "httpCode: $httpCode ,placeId : $placeId, lat: $lat,lng: $lng \n";

function googleGeoCoding($street,$city,$state,$zip)
{
    /*
     * 
     google matrix api key
     AIzaSyCRWXVJ412dzsdiTWafMdlo9lOgUGLITJc
     geocoding key
     
     AIzaSyBQoO0pzYGecIs0KOhCPKHwdXwnFaB3elA
     
     driving directions
     AIzaSyBEdRYQWuafQALe1RbpXqBsz97QCk_RvYA
     */
    $API_KEY="AIzaSyBEdRYQWuafQALe1RbpXqBsz97QCk_RvYA";
    $url = "https://maps.googleapis.com/maps/api/geocode/json?address=$street,$city,$state,$zip&key=$API_KEY";
    $url = str_replace(" ","+",$url);
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_URL, $url);
    
    $result = curl_exec($ch);
    $info = curl_getinfo($ch);
    curl_close($ch);
    $r1=json_decode($result);
 //   print_r($r1->{'results'});//->{'address_components'});
    $data = $r1->{'results'};

    if( count($data)  == 0)
    {
        return array( 'Error','Error','Error','Error');
    }else{
        return array( $info["http_code"],$data[0]->{'place_id'},$data[0]->{'geometry'}->{'location'}->{'lat'},$data[0]->{'geometry'}->{'location'}->{'lng'});
        
    }   
//https://maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&key=YOUR_API_KEY
}
/*
function googleDirections($origin,$detination)
{
    / *
    google matrix api key
    AIzaSyCRWXVJ412dzsdiTWafMdlo9lOgUGLITJc
    geocoding key
    
    AIzaSyBQoO0pzYGecIs0KOhCPKHwdXwnFaB3elA
    
    driving directions
    AIzaSyBEdRYQWuafQALe1RbpXqBsz97QCk_RvYA
    
    maps javascript api key 
    &key=AIzaSyBjK2MTtLQGiYI61_hmEH4BBXKY6uzX3Jk 
    * /
    $API_KEY="AIzaSyBEdRYQWuafQALe1RbpXqBsz97QCk_RvYA";
    $url = "https://maps.googleapis.com/maps/api/directions/json?origin=$origin&destination=$detination&key=$API_KEY"
    
 
        
        if( $api_sub != '')
            $url = $url . "/" . $api_sub;
            
            
            $url = $url ."?licenseNumber=".$facility_license;
            
            print"URL:  ".  $url . "\n";
            
            $ch = curl_init();
            
            $API_KEY = "lxisRrLUm-ijhpWzraSJ9g0Be6eRo6odARwfHgvgyaFMORMc";
            
            $additionalHeaders="";
            curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json', $additionalHeaders));
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_USERPWD, $API_KEY.":4ABk0xpkhATaOhFgB81dses94sRCBA2jqV5xrAwX9fpUPZO6");
            
            return $ch;
}
*/
?>

