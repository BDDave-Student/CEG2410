#! /bin/bash
##
##  Brandon Dave
##  CEG2410
##  Project 2

initPath () { # Creates directory for server scripts
        if [[ ! -d $HOME/server-scripts ]] ;then
                mkdir $HOME/server-scripts
                echo "Created server-scripts directory"
        fi

        # Always copies working instance to old instance
        # Or copies old instance to self for accidental old file calls
        cp $0 $HOME/server-scripts/$0
}

installs () { # Installs apt packages
        sudo apt install htop
        sudo apt install python3
        sudo apt install python3-pip
        sudo apt install ack
        echo "The script has installed htop, python3, python3-pip, and ack"
}

motd-message () { # Disables pre-installed MOTD and implements personal

        # Create personal welcome message
        if [[ ! -f /etc/update-motd.d/01-bdd-motd ]] ;then
                touch /etc/update-motd.d/01-bdd-motd
                chmod +x /etc/update-motd.d/01-bdd-motd # Enables MOTD
                echo "#! /bin/bash" >> /etc/update-motd.d/01-bdd-motd
                echo "echo \"Welcome to the grid.\"" >> /etc/update-motd.d/01-bdd-motd
                echo "echo \"This grid is used for CEG3120 hosted by AWS\"" >> /etc/update-motd.d/01-bdd-motd
                echo "echo \"Last known location:  Flynn's Arcade\"" >> /etc/update-motd.d/01-bdd-motd
        fi

        # Retains old MOTD files
        if [[ -f /etc/update-motd.d/00-header ]] ;then
                mv /etc/update-motd.d/00-header         /etc/update-motd.d/old-00-header
        fi
        if [[ -f /etc/update-motd.d/10-help-text ]] ;then
                mv /etc/update-motd.d/10-help-text      /etc/update-motd.d/old-10-help-text
        fi
        if [[ -f /etc/update-motd.d/50-motd-news ]] ;then
                mv /etc/update-motd.d/50-motd-news      /etc/update-motd.d/old-50-motd-news
        fi

        chmod -x /etc/update-motd.d/old* #Disables above MOTD files
        echo "The script has modified the Message of the Day."
        echo "The next time user logs on, the new message will be displayed."
}

init () {
        if [[ $EUID -eq 0 ]] ;then
                echo "Running script as root admin. . ."
                initPath
                installs
                motd-message
        else
                echo "You are not the admin I am looking for."
        fi
}

init
