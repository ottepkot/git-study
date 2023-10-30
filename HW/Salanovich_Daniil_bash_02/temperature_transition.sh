#!/bin/bash

# Check for valid input
if [[ ! "$1" =~ ^[0-9]+[CK]$ ]]; then
    echo "Invalid input. Please provide a temperature value with its scale (C for Celsius, K for Kelvin)."
    exit 1
fi

# Extract temperature and scale from the input
temperature="${1%?}"
scale="${1: -1}"

# Convert temperature and display the result
if [ "$scale" == "C" ]; then
    kelvin=$((temperature + 273))
    echo "${kelvin}K"
elif [ "$scale" == "K" ]; then
    celsius=$((temperature - 273))
    if [ "$celsius" -lt -273 ]; then
        echo "Invalid input: Temperature value is below absolute zero."
        exit 1
    else
        echo "${celsius}C"
    fi
fi
