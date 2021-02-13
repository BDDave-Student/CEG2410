#! /bin/bash

initParse(){
        echo "What data would you like to parse?"
        echo "[E] for emails"
        echo "[I] for ID Numbers"
        read -r input
        if [[ $input =~ "E" || $input =~ "e" ]] ;then
                echo "Parsing Email Data . . ."
                grep -Eo "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b" $1 > list-email.txt
                # Using \b[A-Za-z0-9._%+-]
                #       finds any whole word of an undefined limit that
                #       consists of character A-Z casing sensitive with
                #       numerics and symbols
                # Using @ hard finds the @ indicator for emails
                # Re-uses [A-Za-z0-9] for Domain name
                # Using \. hard finds the dot (.)
                # Using [A-Za-z]{2,6} finds Top-Level Domain (.com, ca, .edu)
                echo "List of emails created in list-email.txt from $1"
        elif [[ $input =~ "I" || $input =~ "i" ]] ;then
                echo "Parsing ID Number . . ."
                grep -Eo "[0-9]{3,7}" $1 > list-id.txt
                # Using [0-9] limits to finding only numeric values
                # Using {3, 7} bounds the length to characters of 3-7 length size
                echo "List of ID numbers created in list-id.txt from $1"
        fi

}

if [[ -z $1 ]] ;then
  echo "Please use $0 with a file name."
else
  initParse $1
fi
