# Process
  1)  install libnss-ldap libpam-ldap ldap-utils - Install PAM and LDAP Utility and Packages to the server
  2)  /etc/pam.d/common-password:  Changes were made in order to not use an authorization token
  3)  /etc/nsswitch.conf:  Changes were made to allow for LDAP password authorization
  4)  /etc/pam.d/common-session:  Changes were made to create a homedir on first log-in of user

# Creation of User Webby
![Webby](/images/ldap_User.PNG)

# User Webby Woof Woof
![bash user Webby](/images/ldap_Webby_Success.PNG)
