# Index.html:  http://107.22.67.84/
# LDAP:  http://107.22.67.84/phpldapadmin -> https://107.22.67.84/bddldap

## Configure Security Group
![HTTP and HTTPS](/images/securitygroup.PNG)

## Install Apache2
![systemctl of apache2](/images/apache2_systemctl.PNG)

## Modify /var/www/html/index.html
![new apache copter](/images/newindex_apache2.PNG)

## SLAPD
* DNS:  ceg2410.bddave.com
* ORG:  wsu
* PASS:  generic usage

## Configurations
* Configured phpldapadmin/config.php file 
  * setValue for host is elastic IP (Line 293) 
  * setValue for base matching LDAP DNS (Line 300) 
  * setValue for bind_ID is admin, DNS (Line 326) 
  * setValue for timeout (Line 479) 
  * custom config set for Hide_Template_Warning (Line 161) 

## SSL Confirmation
![securrrrrity](/images/apache2_cert.PNG)

## Redirection
![one (re)direction](/images/apache2_conf_redirects.PNG)
![two (re)direction](/images/apache2_conf_redirects_https.PNG)
![three-direction](/images/apache2_conf_complete.PNG)


## Config Files
  1)  Creation of SSL Certification using 2048 RSA hash encryption
  2)  Enable SSL Module for Apache
  3)  Configure apache.conf for aliases
  4)  Configure /000-default.conf for redirects
  5)  Configure /default-ssl.conf for HTTPS redirects and certificates
  
