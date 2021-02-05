#! /bin/bash
##
##  Brandon Dave
##  CEG2410
##  Project 2

initPath () { # Create PATH if not exist for script directory
##  Prioritize previous PATH before /scripts
        if [[ ! -d $HOME/user-scripts ]] ;then
                mkdir $HOME/user-scripts
                echo "The script has created a scripts directory."
        fi

        if ! grep -q "~/user-scripts" ~/.bashrc ;then
                echo "export PATH="$PATH:~/user-scripts"" >> ~/.bashrc
                echo "\$PATH created from script."
        fi
## Copy script to directory
        cp $0 $HOME/user-scripts/my-way.sh
        chmod +x $HOME/user-scripts/my-way.sh #allows execution perms
        echo "Copying $0  to $HOME/user-scripts"
}

initJellyVim () { # Creates vim directory to store and enable jellybean scheme
        if [[ ! -f jellybeans.vim ]] ;then
        wget https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
        fi

        if [[ ! -d $HOME/.vim ]] ;then
                mkdir $HOME/.vim
                echo "The script has created a .vim directory."
        fi
        if [[ ! -d $HOME/.vim/colors ]] ;then
                mkdir $HOME/.vim/colors
                echo "The scripts has created a color directory within /.vim."
        fi

        cp jellybeans.vim $HOME/.vim/colors/jellybeans.vim
        echo "colorscheme jellybeans" >> $HOME/.vimrc
        echo ".vimrc has been configured and jellybeans colorscheme has been enabled."

}

initVim () { # Allows user to enable jellybean colorscheme
        echo "Do you want to enable the Jellybean Color Scheme for VIM?"
        echo "[y] for yes"
        echo "[n] for no"
        read -r input

        if [[ $input =~ "y" ]] ;then
                initJellyVim
        else
                echo "Okay, Bye!"
        fi
}

init() {
                initPath
                initVim
}

init
