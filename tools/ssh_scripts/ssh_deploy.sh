#!/bin/bash
echo " "
tput setaf 6
tput bold

if [ $1 ]
then
    if [ $1 == "hard" ]
    then
        echo "                                  <<< hard_deploy >>>"
        echo ""
        ssh pi@192.168.8.120 rm -rf init;
        ssh pi@192.168.8.120 mkdir init;
        scp -r network system scripts tools pi@192.168.8.120:/home/pi/init
    fi
else 
    echo "                                  <<< soft_deploy >>>"
    echo ""
    scp -r network system scripts pi@192.168.8.120:/home/pi/init
fi
echo " "
echo "                                  <<< running commands >>>"
echo " "
ssh -t pi@192.168.8.120 "cd init; ./tools/init.sh"
echo " "
echo "<<< Operation completed >>>"
echo " "