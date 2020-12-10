#!/bin/bash -x
data=`grep -o "[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}" access.log | sort -n | uniq -c | sort -n | sort -rn | head -n 4`;
echo "$data"
