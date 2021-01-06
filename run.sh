#!/bin/bash
if [ $1 ]
then
    if [ $1 == "local" ]
    then
        ./tools/init.sh
        read -p "Press enter to continue"
    fi
    if [ $1 == "rpi" ]
    then
        ./tools/ssh_scripts/ssh_deploy.sh
    fi
else
    tput setaf 1
    # tput smul
    tput bold
    echo " "
    echo "error : no argument specified"
    echo " "
fi
