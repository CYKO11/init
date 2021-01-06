#!/bin/bash
./tools/print_scripts/start.sh

for file in ./network/*
do
  if [ $file = "./network/06" ]
  then
    ./tools/util_scripts/run_output.sh "$file"
  else
    ./tools/util_scripts/run_script.sh "$file"
  fi
done

./tools/print_scripts/end.sh