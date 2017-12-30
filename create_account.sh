#!/bin/sh
cp -R ~/public_html/sandbox/* ~/public_html/clientq
cp  ~/public_html/sandbox/.htaccess ~/public_html/clientq
mysql -u eksanaly_auth  -p'Auth0r!ze' eksanaly_clientq < dbTemplate.sql


 #db_auth

#INSERT INTO organization(Email, license, subdomain, ApiKey, metrcUrl, metrcKey,  dbname) VALUES 
#SELECT  ?, ?, ?, ApiKey, metrcUrl, metrcKey,dbname FROM organization WHERE id=1


#INSERT INTO password(  username, password, token, DisplayName) VALUES ('d@eksanlatics.com','password','internalid.. or driverlicense','joe who?')

#run sync
#run transfer
#run build drivers

#run .htpassword for drivers
