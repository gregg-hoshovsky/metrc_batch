<?php
/*
if (gethostname() == 'shared2.accountservergroup.com')
{
    $webpath="";
}else{
    $webpath="/metrc/v2";
}
*/

class Database
{
    /*
    if (gethostname() == 'shared2.accountservergroup.com')
    {
        private static $dbHost = 'localhost' ;
        private static $dbUsername = 'eksanaly_auth';
        private static $dbUserPassword = 'Auth0r!ze';
    }else{
        private static $dbHost = 'local.canabis.com' ;
        private static $dbUsername = 'root';
        private static $dbUserPassword = 'root';
    }
  
    private static $dbName = 'cannabis' ;
    private static $dbAuthName = 'eksanaly_basic_auth' ;
    private static $dbXchangeName = 'eksanaly_exchange' ;

*/
    private static $cont  = null;
     
    public function __construct() {
        die('Init function is not allowed');
    }
     
    public static function connect()
    {
        // One connection through whole application
        if ( null == self::$cont )
        {
            try
            {
                if (gethostname() == 'shared2.accountservergroup.com')
                {
                    self::$cont =  new PDO( "mysql:host=localhost;dbname=".$_SESSION['dbname'],  $_SESSION['dbId'], $_SESSION['dbWord']);
                }else{
                    self::$cont =  new PDO( "mysql:host=local.canabis.com;dbname=".$_SESSION['dbname'],  $_SESSION['dbId'], $_SESSION['dbWord']);
                }
 //               self::$cont =  new PDO( "mysql:host=".self::$dbHost.";"."dbname=".self::$dbName, self::$dbUsername, self::$dbUserPassword);
            }
            catch(PDOException $e)
            {
                die($e->getMessage());
            }
        }
        return self::$cont;
    }
    public static function authConnect()
    {
        // One connection through whole application
        if ( null == self::$cont )
        {
            try
            {
               if (gethostname() == 'shared2.accountservergroup.com')
                {
                    self::$cont =  new PDO( "mysql:host=localhost;dbname=eksanaly_basic_auth", 'eksanaly_auth', 'Auth0r!ze');
                }else{
                    self::$cont =  new PDO( "mysql:host=local.canabis.com;dbname=eksanaly_basic_auth", 'root', 'root');
                }
            }
            catch(PDOException $e)
            {
                die($e->getMessage());
            }
        }
        return self::$cont;
    }
    public static function xChangeConnect()
    {
        // One connection through whole application
        if ( null == self::$cont )
        {
            try
            {
               if (gethostname() == 'shared2.accountservergroup.com')
                {
                    self::$cont =  new PDO( "mysql:host=localhost;dbname=eksanaly_exchange", 'eksanaly_auth', 'Auth0r!ze');
                }else{
                    self::$cont =  new PDO( "mysql:host=local.canabis.com;dbname=eksanaly_exchange", 'root', 'root');
                }
                //self::$cont =  new PDO( "mysql:host=".self::$dbHost.";"."dbname=".self::$dbXchangeName, self::$dbUsername, self::$dbUserPassword);
            }
            catch(PDOException $e)
            {
                die($e->getMessage());
            }
        }
        return self::$cont;
    }
     
    public static function disconnect()
    {
        self::$cont = null;
    }

}
?>
