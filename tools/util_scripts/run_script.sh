#!/bin/bash
tput bold

tput setaf 6
tput smul
echo "<<< $1 $2 >>>"
tput rmul
echo " "

tput rmul
tput setaf 2
./$1/$2/script.sh

tput setaf 6
echo " "
tput smul
echo "<<< $1 $2 >>>"
tput rmul
tput sgr0
