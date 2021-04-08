# Active Directory Setup
1)  Install-windowsfeature -name AD-Domain-Services -IncludeManagementTools
2)  Create a new forest with an applicable name  
![new forest](/project5/windows/images/project5_newForest.PNG)  
3)  Define a NetBIOS Domain Name  
![NetBIOS](/project5/windows/images/project5_NetBIOS.PNG)  
4)  After installation and a reboot, confirm in network settings that the network settings are configured with the configured settings entered through the Wizard Setup.  
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
![New Computer System](/project5/windows/images/project5_newConnection.PNG)
4)

## Active Directory Info
1)  Private IP: 10.0.0.30
2)  Subnet:  255.255.255.0  
3)  GatewayIP:  10.0.0.1
4)  DNS Server:  

## AWS Machine Info
Name:  WINDOWS-AWS
1)  Private IP: 10.0.0.35
2)  Subnet:  255.255.255.0  
3)  GatewayIP:  10.0.0.1
4)  DNS Server:  
