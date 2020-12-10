##!/bin/bash -x
data=`cat access.log | cut -d '"' -f3 | cut -d ' ' -f2 | sort | uniq -c | sort -rn | head -n 2`;
echo "$data"
