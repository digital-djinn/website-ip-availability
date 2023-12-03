#! /usr/bin/bash

if [ $# -ne 1 ]
then
    echo -e "\n***************** USAGE *********************"
    echo -e "        ./siteup.sh website/ipaddress         \n"
else
    x=$((ping -c 1 "$1" | grep "64 bytes" | cut -d" " -f1 ) 2>/dev/null )
    if [[ $x -eq 64 ]]
    then
        echo " $1 is up and running "
    else    
        echo " $1 didn't respond "
    fi        
fi    