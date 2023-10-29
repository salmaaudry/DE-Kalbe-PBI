#!/bin/bash

path="/Users/salmaaudry/Documents/Rakamin/hdfs/data"
name_of_directory="data1"
filename_excel="daily_market_price.xlsx"
source_dir="/local/data/market"
target_dir="$path/$name_of_directory"


# If directory exists inside the path
if [ -d "$target_dir" ]; then
    #Copy file from source directory into target directory
	cp "$source_dir/$filename_excel" "$target_dir/$filename_excel"
	
    #Create a logfile
	echo "File Moved Successfully" > "$target_dir/log.txt"

# If directory did not exists
else
    echo "$name_of_directory Directory Not Exists!"

    # Create a directory inside the path
    mkdir -p "$target_dir"
fi
