# Active Directory Setup
1)  Install-windowsfeature -name AD-Domain-Services -IncludeManagementTools
2)  Create a new forest with an applicable name  
![new forest](/project5/windows/images/project5_newForest.PNG)  
3)  Define a NetBIOS Domain Name  
![NetBIOS](/project5/windows/images/project5_NetBIOS.PNG)  
4)  After installation and a reboot, confirm in network settings that the network settings are configured with the configured settings entered through the Wizard Setup.  
![New connection](/project5/windows/images/project5_newConnection.PNG)  


## Active Directory Info
1)  Private IP: 10.0.0.30
2)  Subnet:  255.255.255.0  
3)  GatewayIP:  10.0.0.1
4)  DNS Server:  
