#!/bin/bash -x
val=`cat access.log | grep -i "http" | awk '{print $11}' |grep -i "http" | sort | uniq -c |sort -nr | head -n 4`;
echo “$val"
