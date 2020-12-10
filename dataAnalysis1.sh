#!/bin/bash -x
data=`cat data.csv | awk '{if ($7 >="10000") print NR $2 " " $7}'`; echo "$data"
