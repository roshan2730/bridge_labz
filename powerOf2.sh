#!/bin/bash
read -p "Enter the limit of power " number 
powerSum=1
while(( $powerSum<=128 && $number>0 ))
do
	powerSum=$(( $powerSum*2 ))
	#number=$(( $number-1 ))
	((number--))
done
echo "$powerSum"
