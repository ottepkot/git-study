#!/bin/bash
if [ "$#" -ne 1 ]; then
echo "write the name of file"
exit 1
fi
file_path=$1
if [ ! -f "$file_path" ]; then
echo "Error: no file"
exit 1
fi
file_size=$(stat -c%s "$file_path")
if [ -n "$file_size" ] && [ "$file_size" -le 1024 ]; then
echo "OK"
else
echo "FAIL"
fi
