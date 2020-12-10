#! /bin/bash
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
		  echo "Array Before Sorting :" 
		  echo ${arr[@]}
		  for (( j=1; j<=9; ++j ))
		  do
		  		key=${arr[$j]}
		  		hole=$(( $j-1 ))
		  		while (( $hole>=0 && ${arr[hole]}>$key )) 
		  		do
        			arr[$hole+1]=${arr[hole]}
        			hole=$(( $hole-1 ))
		  		done
		  		arr[$hole+1]=$key
		  done
		  echo "Array After Sorting: "
		  echo ${arr[@]}
		  echo "Second Largest Number: ${arr[9]}" 
		  echo "Second Smallest Number: ${arr[0]}"
}
array
