#!/bin/bash

#argument
if [ -z "$1" ]; then
    echo "Provide a string as an argument"
    exit 1
fi

echo "$1" | rev | tr '[:lower:][:upper:]' '[:upper:][:lower:]'

