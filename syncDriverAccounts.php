<?php

include "/home1/eksanaly/git_source/metrc_include/database.php";
$dirs = array_filter(glob('/home1/eksanaly/public_html/*'), 'is_dir');

$dbFolders= array();
foreach ($dirs as $d)
{
$dbFolders[] = "eksanaly_".basename($d);
}

$pdo_authConnect = Database::authConnect();

$sql = "SELECT UserId,Pwd FROM ServiceAccounts WHERE Type= 'Database'";
$q = $pdo_authConnect->prepare($sql);
$q->execute(array());//array("database"));
$dbRows = $q->fetchAll(PDO::FETCH_ASSOC);

$q = $pdo_authConnect->prepare("SHOW DATABASES");  
$q->execute(array());
$databases = $q->fetchAll(PDO::FETCH_ASSOC);

Database::disconnect();
//print_r( $dbs);
//print"\n";
//print_r( $dbFolders);
foreach($databases as $database)
{

	//print $database['Database'] ."\n";
	if( !in_array($database['Database'], $dbFolders))
	{
		continue;
	}

	//print "locate:" . $database['Database'] ."\n";
	$parts = explode("_",$database['Database']);
	//
	
	
	
	//print_r($parts);
	if( count($parts) != 2)
	{
		print "MISSSING ".  $database['Database'] ."\n";
		continue;
	}
	
	$subdomain=$parts[1];
	print "locate:" . $database['Database'] . " subdomain $subdomain\n";	
	try{
		$db = Database::connectByDBname($database['Database'],  $dbRows[0]['UserId'], $dbRows[0]['Pwd']);
		//print "db ". $db->errorCode();
		$q = $db->prepare("SELECT DriverName, DriverOccupationalLicenseNumber,ShipperFacilityLicenseNumber 
			FROM audit_transfers_outgoing group by DriverName, DriverOccupationalLicenseNumber,ShipperFacilityLicenseNumber ");  
		$q->execute(array());
		$drivers = $q->fetchAll(PDO::FETCH_ASSOC);
		//print_r( $drivers);
		//print"\n";
		Database::disconnect();
		foreach($drivers as $driver)
		{			
			print "ShipperFacilityLicenseNumber  " . $driver['ShipperFacilityLicenseNumber']	;
			print " driver  " . $driver['DriverName']	 ."\n";
			$db = Database::authConnect();
			$paramters= array($driver['ShipperFacilityLicenseNumber'],$subdomain);
			$sql = "SELECT Email FROM organization WHERE license =? and subdomain =?";
			$organization = $db->prepare($sql);  
			$organization->execute($paramters);
			$emails = $organization->fetchAll(PDO::FETCH_ASSOC);
			
			/*
			print "organization ". $organization->errorCode();print"\n";
			print_r( $sql);print"\n";
			print_r($paramters);print"\n";
			print_r( $emails);print"\n";
			*/
			if( count($emails) != 1)
			{
				print "SOMEHTING WRONG WITH organization\n\n\n";
				continue;
			}
			
			//print_r( $drivers);
			//print"\n";

			$insertParamters = array($driver['DriverOccupationalLicenseNumber'],$driver['ShipperFacilityLicenseNumber']);
			$q = $db->prepare("SELECT * from driver_organization where driverLicenseNumber=? and license = ?");  
			$q->execute($insertParamters);
			$driver_organization = $q->fetchAll(PDO::FETCH_ASSOC);
			//print "driver organization ". $q->errorCode();
			//print_r( $driver_organization);
			//print"\n";
			if( count($driver_organization) != 1)
			{
	
				$paramters= array($driver['ShipperFacilityLicenseNumber'],$subdomain);
				$sql = "insert into driver_organization (driverLicenseNumber, license) values(?,?)";
				$stmt = $db->prepare($sql);  
				$stmt->execute($insertParamters);
				//print $stmt->errorCode();
				if($stmt->errorCode() != "00000")
				{
					print "\n\tMISSING  WITH driver_organization\n\t-- insert" . $stmt->errorInfo() . "\n\n";
					continue;
				}
						
				$htaccess[] = array(
					"DriverOccupationalLicenseNumber"=>$driver['DriverOccupationalLicenseNumber']
					,"ShipperFacilityLicenseNumber"=>$driver['ShipperFacilityLicenseNumber']
					,"subdomain"=>$subdomain
				);
			}
			
			$paramters = array($driver['DriverOccupationalLicenseNumber']);
			$q = $db->prepare("SELECT * from password where token=? ");  
			$q->execute($paramters);
			$password = $q->fetchAll(PDO::FETCH_ASSOC);
			//print "driver organization ". $q->errorCode();
			//print_r( $driver_organization);
			//print"\n";
			if( count($password) != 1)
			{
				$token = $driver['DriverOccupationalLicenseNumber'];
				$username= $token."@a.com";
				$password = $token;
				$DisplayName = $driver['DriverName'];
				$paramters= array($username,$password ,$token,$DisplayName);
				$sql = "INSERT INTO password(username, password, token, DisplayName) VALUES (?,?,?,?)";
				$stmt = $db->prepare($sql);  
				$stmt->execute($paramters);
				if($stmt->errorCode() != "00000")
				{
					print "\n\tSoMETHNING WRONG WITH BUILDIND DRIVE ACCCOUNT\n\t-- insert" . $stmt->errorInfo() . "\n\n";
					continue;
				}
				$htaccess_password[$token] = array(
					"password"=>$password
					
				);
				
			}
			/*
			
			$paramters = array($driver['DriverOccupationalLicenseNumber']);
			$sql = "SELECT `username`, `password`, `token`, `DisplayName` ,organization.license, `subdomain` 
			FROM `password` join driver_organization on( token=`driverLicenseNumber`) 
			join organization on( driver_organization.license =organization.license)
			where token = ?";
			$q = $db->prepare($sql);  
			$q->execute($paramters);
			
			$users = $q->fetchAll(PDO::FETCH_ASSOC);
			//print "users". $q->errorCode();
			//print_r( $sql);print"\n";
			//print_r($paramters);print"\n";
			//print_r( $users);print"\n";
			print "\t\thtaccess:\n";
			foreach($users as $u)
			{	
				print "\t\t\ttoken:".$u['token'] ." password:".$u['password']." subfolder:".$u['subdomain']."\n";
			}
			

*/
	
			
			Database::disconnect();
		
		}

	}catch(Exception $e) {
	    	echo 'Caught exception: ',  $e->getMessage(), "\n";
	}
	
}

	print_r($htaccess_password);
	print_r($htaccess);

print "DONE: \n\n";
?>