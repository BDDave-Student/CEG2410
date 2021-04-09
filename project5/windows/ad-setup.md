# Active Directory Setup
1)  Install-windowsfeature -name AD-Domain-Services -IncludeManagementTools
2)  Create a new forest with an applicable name  
![new forest](/project5/windows/images/project5_newForest.PNG)  
3)  Define a NetBIOS Domain Name  
![NetBIOS](/project5/windows/images/project5_NetBIOS.PNG)  
4)  After installation and a reboot, confirm in network settings that the network settings are configured with the entries from the Wizard Setup.  
![New connection](/project5/windows/images/project5_newConnection.PNG)  
Review Server Manager's Active Directory Administrator Center
![Server Manager AD Tool](/project5/windows/images/project5_ADAdminCenter.PNG)

# Managing AD
1)  Setting up new OU for campus specific locations  
![Campus based OU](/project5/windows/images/project5_newOU.PNG)
2)  AD Admin Center utilizes a more colorful and informative UI whereas AD Users and Computers uses a more succint, to-the-point, UI.  I created Users for the new OU, UD and WSU, using AD Users and Computers.  
![New Students WSU](/project5/windows/images/project5_newUsersWSU.PNG)  
![New Students UD](/project5/windows/images/project5_newUsersUD.PNG)  
3)  Adding a new computer:  
![New Computer System](/project5/windows/images/project5_newComputer.PNG)
4)  Configuring other system:  
* Edit Name Field:  
!
* Set IPv4:  
(insert image here)
5)  Joining the machine to the domain:


## Active Directory Info  
Connection-specific DNS Suffix: ec2.internal  
DHCP Enabled: Yes  
IPv4 Address: 10.0.0.30  
IPv4 Subnet Mask: 255.255.255.0  
IPv4 Default Gateway: 10.0.0.1  
IPv4 DHCP Server: 10.0.0.1  
IPv4 DNS Server:   
IPv4 WINS Server:   
NetBIOS over Tcpip Enabled: Yes  


## AWS Machine Info  
Name:  WINDOWS-AWS  
Connection-specific DNS Suffix: ec2.internal  
DHCP Enabled: Yes  
IPv4 Address: 10.0.0.35  
IPv4 Subnet Mask: 255.255.255.0  
IPv4 Default Gateway: 10.0.0.1  
IPv4 DHCP Server: 10.0.0.1  
IPv4 DNS Server: 10.0.0.2  
IPv4 WINS Server:   
NetBIOS over Tcpip Enabled: Yes  
