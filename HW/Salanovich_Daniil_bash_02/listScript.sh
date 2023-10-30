#!/bin/bash

#this script takes a number as a argument and creates the cpecifed number 
#of directories woth names in the format dir

#check argument
if [ -z "$1" ]; then
   echo "Provide a number as an argument"
   exit 1
fi

#Check if the argument is a number
if ! [[ "$1" =~ ^[0-9]+$ ]]; then
   echo "Argument must be a positive integer"
   exit 1
fi

#Check that the argument dosnt exceed 32
if [ "$1" -gt 32 ]; then
   echo "Argument must be less than 32"
   exit 1
fi

#Creaating dirs
for ((i=0; i<$1; i++)); do
    dir_name="dir_$(printf \\$(printf '%03o' $((i+97))))"
    mkdir "$dir_name"
done

#Outpoot result
if [ "$1" -eq 1 ]; then
    echo "Result: $1 directory established: $(ls -d dir_*)"
    echo "Result: $1 directories established: $(ls -d dir_*)"
fi
