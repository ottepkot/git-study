#!/bin/bash
if [ "$#" -ne 2 ]; then
echo "Error: need to provide two arguments"
exit 1 
fi
num1=$1
num2=$2
sum=$((num1 + num2)) 
product=$((num1 * num2))
quotient=$((num1 / num2))
difference=$((num1 - num2))
echo "Sum: $sum"
echo "Product: $product"
echo "Quotient: $quotient"
echo "Difference: $difference"
 
