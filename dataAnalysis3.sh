#! /bin/bash
data=`cat data.csv | awk '{ if($5 >= "7000" && $5 <= "10000") print NR " " $2" "$5 }'` 
echo "$data "
