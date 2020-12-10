##!/bin/bash -x
echo enter a num
read num
for((i=0;i<=num;i++))
do
poweroftwo=$((2**$i))
if [ $poweroftwo -ge 256 ]
then
	echo "Number exceeds after 256"
else
	echo $i" " $poweroftwo
fi
done

