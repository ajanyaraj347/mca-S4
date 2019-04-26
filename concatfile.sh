if diff file1.txt file2.txt >/dev/null ; then
echo Files are same
echo 
rev file2.txt
echo 
else
echo Files are different
echo
tr '[:lower:]' '[:upper:]' < file2.txt
echo
fi

