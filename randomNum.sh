##!/bin/bash
function array()
{
        i=0
        declare -a arr
        while (( $i<10 ))
		  do
				val=$(( RANDOM%900 + 100 ))
				if (( $val>=100 && $val<=999 ))
				then
					arr[$i]=$val
					((i++))
				fi
			done
			min=1000
			for (( j=0; j<=9; j++ ))
			do
        		if (( $min>${arr[$j]} )); then
                min=${arr[$j]}
				fi
			done
			secondMin=1000
			for (( j=0; j<=9; j++ ))
			do
				if (( $secondMin>${arr[$j]} && $min!=${arr[$j]} ))
				then
					secondMin=${arr[$j]}
				fi
			done
			max=0
			for (( j=0; j<=9; j++ ))
			do
				if (( $max<${arr[$j]} )); then
        			max=${arr[$j]}
				fi 
			done
			secondMax=0
			for (( j=0; j<=9; j++ ))
			do
				if (( $secondMax<${arr[$j]} && $max!=${arr[$j]} )) 
				then
					secondMax=${arr[$j]}
				fi
			done
			echo ${arr[@]}
			echo "Second Smallest number is $secondMin" 
			echo "Second Largest number is $secondMax"
}
array
