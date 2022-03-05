#!/bin/bash

echo "specify the file name:"
read filename
count=0
cat $filename  | while read urls; do
curl  -s --connect-timeout 2  "${urls}" | grep -E -o "\b[a-zA-Z0-9.-]+@[a-zA-Z0-9.-]+\.[a-zA-Z0-9.-]+\b" >> Email-List.txt
((count++))
  echo "[*] ${count} : ${urls}" 
done
echo $count
