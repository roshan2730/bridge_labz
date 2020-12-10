#!/bin/bash
echo enter a num
read num
function Harmonic()
{
	#num=$1 
	sum=1
   for(( i=2; i<=$num; i++ ))
	do
		tempSum=$(echo | awk "{print\$2 1/$i}") 
		sum=$(echo | awk "{print\$2 $tempSum+$sum}")
	done
	echo "Harmonic value =  $sum"
}
Harmonic
