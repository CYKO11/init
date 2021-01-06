#!/bin/bash
mkdir $1 &> /dev/null
cd $1
mkdir $2 &> /dev/null
cd ..
cp ./tools/script.sh $1/$2/
