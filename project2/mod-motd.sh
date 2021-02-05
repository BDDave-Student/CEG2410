#! /bin/bash
##
##  Brandon Dave
##  CEG2410
##  Project 2

initPath () { #
        if [[ ! -d $HOME/server-scripts ]] ;then
                mkdir $HOME/server-scripts
                echo "Created server-scripts directory"
        fi
}

installs () {
        sudo apt install htop
        sudo apt install python3
        sudo apt install python3-pip
        sudo apt install ack
        echo "The script has installed htop, python3, python3-pip, and ack"
}

motd-message () {
        touch $HOME/myscriptmadethis.txt
}

init () {
        if [[ $EUID -eq 0 ]] ;then
                echo "Running script as root admin. . ."
                installs
                motd-message
        else
                echo "You are not the admin I am looking for."
        fi
}

init
