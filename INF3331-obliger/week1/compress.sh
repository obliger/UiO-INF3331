#!/bin/bash

# help message
function helpmsg {
    echo "compress files in path larger than a selected size (in kB)"
    echo "usage: $0 <path> <minsize>"
}

# help option
if [[ $1 == "-h" ]] || [[ $1 == "-help" ]]; then
    helpmsg
    exit
fi
# not enough arguments
if [[ $2 == "" ]]; then
    echo "Error: Not enough arguments"
    helpmsg
    exit
fi

find $1 -type f -size +$2k |
while read filename
do
    echo "compressing file: $filename"
    gzip "$filename"
done
