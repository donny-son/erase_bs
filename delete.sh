#!/bin/bash

# sudo 권한이 필요
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

# Read the csv file line by line
while IFS= read -r line
do
    # Delete the directory or file
    echo "$line"
done < "$1"
