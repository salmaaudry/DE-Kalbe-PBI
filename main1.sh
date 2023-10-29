#!/bin/bash

path="/Users/salmaaudry/Documents/Rakamin/hdfs/data"
name_of_directory="data1"

# If directory exists inside the path
if [ -d "$path/$name_of_directory" ]; then
    echo "There is $name_of_directory Directory Exists!"

# If directory did not exists
else
    echo "$name_of_directory Directory Not Exists!"

    # Create a directory inside the path
    mkdir -p "$path/$name_of_directory"
fi

# crontab -e
# 0 7 * * * /Users/salmaaudry/Documents/Rakamin/main1.sh
