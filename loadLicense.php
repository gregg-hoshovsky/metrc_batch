<?php 
include_once 'database.php';
$dataElements=array();
$pdo = Database::xChangeConnect();
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
/*
$sql = "SELECT id,`NAME`, `POSTAL_CITY`, `COUNTY`, `STREET_ADDRESS`, `ZIP`, `state` ,lat,lng ,`placeId` FROM `Customer`
where NAME = ? and county = ?";
$q = $pdo->prepare($sql);
$sqlUpdate = "update  Customer set LICENSE_NUMBER= ?,BUSINESS_NAME=?, LICENSE_TYPE=? where id = ?";
$qUp = $pdo->prepare($sqlUpdate);
$sqlInsert = "INSERT INTO `Customer` ( `NAME`, `BUSINESS_NAME`, `LICENSE_NUMBER`, `LICENSE_TYPE` , `COUNTY`)
    VALUES (?,?,?,?,?)";
$qIn = $pdo->prepare($sqlInsert);
*/
$sqlInsertTemp = "INSERT INTO `temp_cust` ( `NAME`, `BUSINESS_NAME`, `LICENSE_NUMBER`, `LICENSE_TYPE` , `COUNTY`)
    VALUES (?,?,?,?,?)";
$qInTemp = $pdo->prepare($sqlInsertTemp);


print "$sql\n";

foreach (glob("/Users/greggh/Desktop/MarijuanaLicenses_approved_xls/*.csv") as $filename) {
  //  print $filename."\n";    
 //   $row = 1;
    
    if (($handle = fopen($filename, "r")) !== FALSE) {
        while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
          //  print_r($data);
            $LICENSE_NUMBER= '';
            $NAME= '';
            $BUSINESS_NAME= ''; 
            $LICENSE_TYPE = '';
            $COUNTY = '';
            if( count($data) == 0)
                continue;
       //     print "$filename " . count($data) ."\n";
            if( $filename == '/Users/greggh/Desktop/MarijuanaLicenses_approved_xls/Table 1-Table 1.csv')
            {
                if( count($data) != 22)
                {
                    print $data[0] .":" .count($data) ."\n";
                }else {
                    $LICENSE_NUMBER= $data[0];
                    $BUSINESS_NAME= $data[2];
                    $NAME= $data[3];
                    $LICENSE_TYPE = $data[13];
                    $COUNTY = $data[17];
                    
                    if( $NAME == '')
                    {
                        $NAME= $data[5];
                    }
                    if ($NAME == '')
                    {
                            $NAME=$data[4];
                    }
                    $LICENSE_TYPE = $data[13];
                    if( $LICENSE_TYPE == ''){
                        $LICENSE_TYPE =$data[9];
                    }
                    if( $LICENSE_TYPE == '')
                    {
                        $LICENSE_TYPE =$data[12];
                    }
                    if( $LICENSE_TYPE == '')
                    {
                        $LICENSE_TYPE =$data[8];
                    }
                    if( $LICENSE_TYPE == '')
                    {
                        $LICENSE_TYPE =$data[7];
                    }
                    if( $LICENSE_TYPE == '')
                    {
                        $LICENSE_TYPE =$data[6];
                    }
                    if ($LICENSE_TYPE == '')
                    {
                            $LICENSE_TYPE =$data[10];
                    }
                    if ($LICENSE_TYPE == '')
                    {
                        $LICENSE_TYPE =$data[11];
                    }
                    if ($LICENSE_TYPE == '')
                    {
                        $LICENSE_TYPE =$data[14];
                    }
                    if( $COUNTY == '')
                    {
                        $COUNTY = $data[18];
                    }
                    
                }

            }

            if( $filename == '/Users/greggh/Desktop/MarijuanaLicenses_approved_xls/Table 2-Table 1.csv')
            {
                if(count($data) != 19)            
                {
                   print $data[0] .":" .count($data) ."\n";
                }else {
                    $LICENSE_NUMBER= $data[0];
                    $NAME= $data[4];
                    $BUSINESS_NAME= $data[1];
                    $LICENSE_TYPE = $data[8];
                    $COUNTY = $data[16];
                    if ($NAME == '')
                    {
                        $NAME=$data[3];
                    }
                    if ($NAME == '')
                    {
                        $NAME=$data[2];
                    }
                    if ($LICENSE_TYPE == '')
                    {
                        $LICENSE_TYPE =$data[10];
                    }
                    if ($LICENSE_TYPE == '')
                    {
                        $LICENSE_TYPE =$data[9];
                    }
                    if ($LICENSE_TYPE == '')
                    {
                        $LICENSE_TYPE =$data[13];
                    }
                    if ($LICENSE_TYPE == '')
                    {
                        $LICENSE_TYPE =$data[11];
                    }
                    if ($LICENSE_TYPE == '')
                    {
                        $LICENSE_TYPE =$data[5];
                    }
                    if ($LICENSE_TYPE == '')
                    {
                        $LICENSE_TYPE =$data[6];
                    }
                    if ($LICENSE_TYPE == '')
                    {
                        $LICENSE_TYPE =$data[12];
                    }
                    if ($LICENSE_TYPE == '')
                    {
                        $LICENSE_TYPE =$data[7];
                    }
                        
                }
            }
      
            if( $filename == '/Users/greggh/Desktop/MarijuanaLicenses_approved_xls/Table 3-Table 1.csv' )
            {
                if(count($data) != 6){
                    print $data[0] .":" .count($data) ."\n";
                }else {
                    $LICENSE_NUMBER= $data[0];
                    $NAME= $data[2];

                    $BUSINESS_NAME= $data[1];
                    $LICENSE_TYPE = $data[3];
                    $COUNTY = $data[5];
                    if ($NAME == '')
                    {
                        $NAME =$data[3];
                    }
                    if ($LICENSE_TYPE == '')
                    {
                        $LICENSE_TYPE =$data[7];
                    }
                    if ($LICENSE_TYPE == '')
                    {
                        $LICENSE_TYPE =$data[9];
                    }
                    if ($COUNTY == '')
                    {
                        $COUNTY =$data[12];
                    }
                }
            }

            if( $filename == '/Users/greggh/Desktop/MarijuanaLicenses_approved_xls/Table 4-Table 1.csv' )
            {
                if(count($data) != 15){
                    print $data[0] .":" .count($data) ."\n";
                }else {
                    $LICENSE_NUMBER= $data[0];
                    $NAME= $data[2];
                    $BUSINESS_NAME= $data[1];
                    $LICENSE_TYPE = $data[5];
                    $COUNTY = $data[12];
                    if ($NAME == '')
                    {
                        $NAME =$data[3];
                    }
                    if ($NAME == '')
                    {
                        $NAME =$data[4];
                    }
                    if ($LICENSE_TYPE == '')
                    {
                        $LICENSE_TYPE =$data[9];
                    } 
                    if ($LICENSE_TYPE == '')
                    {
                        $LICENSE_TYPE =$data[6];
                    } 
                    if ($LICENSE_TYPE == '')
                    {
                        $LICENSE_TYPE =$data[8];
                    } 
                    if ($LICENSE_TYPE == '')
                    {
                        $LICENSE_TYPE =$data[7];
                    } 
                    
                }
            }
 
            if( $filename == '/Users/greggh/Desktop/MarijuanaLicenses_approved_xls/Table 5-Table 1.csv')
            {
                if(count($data) != 6){
                    print $data[0] .":" .count($data) ."\n";
                }else {
                    $LICENSE_NUMBER= $data[0];
                    $NAME= $data[2];
                    $BUSINESS_NAME= $data[1];
                    $LICENSE_TYPE = $data[3];
                    $COUNTY = $data[4];
                }
            }
            if( $LICENSE_NUMBER== '' ||
                $NAME== ''||
                $BUSINESS_NAME== ''||
                $LICENSE_TYPE == ''||
                $COUNTY == ''){
                    continue;
            }
            
            $BUSINESS_NAME= str_replace("\n"," ",$BUSINESS_NAME);
            $BUSINESS_NAME= str_replace("\r"," ",$BUSINESS_NAME);
       //     print substr($filename,-15)."\tBUSINESS_NAME: $BUSINESS_NAME\tNAME: $NAME\tLICENSE_NUMBER: $LICENSE_NUMBER\tLICENSE_TYPE: $LICENSE_TYPE\tCOUNTY: $COUNTY\n";

            if ($BUSINESS_NAME == 'LICENSEE NAME')
                continue;
            $dataElements[] = array(
                'LICENSE_NUMBER'=>$LICENSE_NUMBER
                ,'BUSINESS_NAME'=>$BUSINESS_NAME
                ,'LICENSE_TYPE'=>$LICENSE_TYPE 
                ,'NAME'=>$NAME 
                ,'COUNTY'=>$COUNTY
                
            );
            
        }
        $dataElementsUnique= array_unique($dataElements, SORT_REGULAR);
        foreach ($dataElementsUnique as $de)
        {
            /*
         //   print "Name " . $de['NAME'] . " --> LICENSE_NUMBER " . $de['LICENSE_NUMBER'] ."\n";
            $q->execute(array( $de['NAME'],$de['COUNTY']));
            $returnTransfers= $q->fetchAll(PDO::FETCH_ASSOC);
         //   print_r($returnTransfers);
            $companyId = $returnTransfers[0]['id'];
            
            if( !empty($companyId))
            {
                
                if ( count($returnTransfers) > 1)
                {
                    $paramters = array(  $de['NAME'], $de['BUSINESS_NAME'], $de['LICENSE_NUMBER'], $de['LICENSE_TYPE'] ,$de['COUNTY']);
                    //print "sql $sqlUpdate \n";
                    print "INSERT TEMP ";
                    print_r( $paramters);;
                    $qInTemp->execute($paramters);
                    echo " PDO::errorCode(): ", $pdo->errorCode()."\n" ;
                    /*
                    echo "\nPDO::errorCode(): ", $pdo->errorCode()."\n" ;
                    print "UPDATE " . $companyId ." count " . count($returnTransfers) . " Name " . $de['NAME'] . " --> LICENSE_NUMBER " . $de['LICENSE_NUMBER'] ."\n";
                    
                    foreach($returnTransfers as $rt)
                        print $rt['COUNTY'] ."\n";
                        print ' We have '. $de['COUNTY'] ."\n";
                    print "-------------Argh\n";
                    * /
                }else{
              //  print_r($returnTransfers);
                    print "UPDATE  ";
                    $paramters = array( $de['LICENSE_NUMBER'], $de['BUSINESS_NAME'],$de['LICENSE_TYPE'],$companyId);
               // print "sql $sqlUpdate \n";
                //print_r( $paramters);;
                $qUp->execute($paramters);
                echo " PDO::errorCode(): ", $pdo->errorCode()."\n" ;
                }
            }else {
                */

             //   print "INSERT CUST ";// . "Name " . $de['NAME'] . " --> LICENSE_NUMBER " . $de['LICENSE_NUMBER']  . "\n"; 
             //    print "sql $sqlInsertTemp \n";
             //     print_r( $paramters);
                 $paramters = array( $de['NAME'], $de['BUSINESS_NAME'], $de['LICENSE_NUMBER'], $de['LICENSE_TYPE'] ,$de['COUNTY']);
                try{
                 $qInTemp->execute($paramters);
                }catch(Exception $ex)
                {
                    echo " PDO::errorCode(): ", $pdo->errorCode()."\n" ;
                }

           // }
        }
        
        fclose($handle);
    }
    
   // print_r($dataElements);
    
}
$pdo = Database::disconnect();
?>