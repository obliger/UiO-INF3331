#!/bin/bash

# help message
function helpmsg {
    echo "decompress all gzip files in path"
    echo "usage: $0 <path>" 
}

# help option
if [[ $1 == "-h" ]] || [[ $1 == "-help" ]]; then
    helpmsg
    exit
fi
# not enough arguments
if [[ $1 == "" ]]; then
    echo "Error: Not enough arguments"
    helpmsg
    exit
fi

 
# decompress all .gz files
for zipfile in $1/*.gz
do
    echo "decompressing file: $zipfile"
    gzip -d "$zipfile"
done
