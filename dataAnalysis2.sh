#!/bin/bash -x
data=`cat data.csv |grep -i CAPT | awk '{total= total+$7}END{print total}'` 
echo "$data"
