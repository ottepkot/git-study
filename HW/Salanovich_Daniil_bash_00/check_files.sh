if [-f "data.txt"]; then
echo "File data.txt found!"
cp data.txt backup.txt
else
echo "File data.txt not  found!"
fi
