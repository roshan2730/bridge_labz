#!/bin/bash -x
data=`cat data.csv |grep -i CAPT | awk '{total= total+$4}END{print total/NR}'`; 
echo "$data"
