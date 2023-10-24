#!/bin/bash


if [ "$#" -ne 3 ]; then
echo "Eror: needi to provide three arguments"
exit 1
fi

X=$1
Y=$2
Z=$3

if [ $X -le 0 ] || [ $Y -le 0 ] || [ $Z -le 0 ]; then
echo "Eror: sides cant be negative or zero"
exit 1 
fi

if [ $X -eq $Y ] && [ $Y -eq $Z ]; then
echo "EQUILATERAL"
elif [ $X -eq $Y ] || [ $X -eq $Z ] || [ $Y -eq $Z ]; then
echo "ISOSCELES"
else
echo "SCALENE"
fi
