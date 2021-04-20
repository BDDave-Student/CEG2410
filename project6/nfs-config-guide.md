# Using NFS as a File Share
1)  Host Installation:  `sudo apt install nfs-kernel-server`
2)  Creation of Directory to be shared:  `mkdir /home/ubuntu/network_share`
3)  Who is [Nobody](https://en.wikipedia.org/wiki/Nobody_(username))? 
- Nobody is a system created user to represent the user and group with the least amount of permissions.  The `nobody` user does not and should not have a shell attached to their account.  NFS requires the `nobody` user for in case a file share gets disrupted and the name and group of the sent file does not exist.
4)  a)  `sudo chown nobody /home/ubuntu/network_share/`  
    b)  `sudo chgrp nogroup /home/ubuntu/network_share/`
5)  a)  NFS Ports:  2049  
    b)  v2 and v3:  111  
6)  Security Group Modifications:
![Security Group](/project6/images/project6_securityGroups.PNG)  
7)  New Ubuntu 16.04 Instance:  3.217.241.164  
8)  /etc/exports:  
![/etc/exports](/project6/images/project6_etcexports.PNG)  
9)  a)  Added:  `/home/ubuntu/network_share 3.217.241.164(rw,sync,no_subtree_check)`  
    b) `rw`:  The filesystem is writable  
    c) `sync`:  reply clients after data have been stored to stable storage  
    d) `no_subtree_check`:  If a subdirectory of a filesystem is exported, but the whole filesystem isn't then whenever a NFS request arrives, the server must check not only that the accessed file is in the appropriate filesystem (which is easy) but also that it is in the exported tree (which is harder).  This is used not only for security purposes, but also reliability.  
10)  Outside Network:  `ssh -i dave-ceg2410-key.pem ubuntu@3.217.241.164` or Inside Network:  `sudo ssh -i .ssh/dave-ceg2410-key.pem ubuntu@10.0.0.9`  
11)  a)  System update:  `sudo apt-get update`  
     b)  Client Installation:  `sudo apt install nfs-common`  
12)  Creation of Client Directory:  `sudo mkdir client_folder`  
13)  Mounting from Client to Host:  `sudo mount 107.22.67.84:/home/ubuntu/newtork_share /home/ubuntu/client_folder`  
14)  Mounted Filesystems:  
![File System](/project6/images/project6_filesystem.PNG)  
15)  Client To Host:  
![Client and Host Connection](/project6/images/project6_clientToHost.PNG)
17)  Host To Client:  
![Host and Client Connection](/project6/images/project6_hostToClient.PNG)
