#!/bin/bash
#echo enter a num
#read num
function factor()
{
	echo enter a num
	read num
	#num=$1
	while(( $num%2==0 ))
	do	
		echo "2 "
		num=$(( $num/2 ))
	done
	a=$(echo "$num" | awk '{print sqrt($num)}')
	a=${a%.*}
	for(( i=3; i<=$a; i=$(( $i+2 )) ))
	do
        while(( $num%$i==0 ))
        do
				echo "$i"
				num=$(( $num/$i ))
		  done
	done
	if (( $num>2 ))
	then
		echo "$num "
	fi
}
factor
