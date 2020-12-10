#!/bin/bash -x
for file in `ls *.log`; do
count=`find . -name $file | grep -i "systemd"` 
echo "$file $count"
done
