#!/bin/bash

function c_c {
    echo -e "\nBye bye"
    exit
}

trap c_c SIGINT

while true; do
    date
done
