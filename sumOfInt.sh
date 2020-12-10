##! /bin/bash
function AddToZero()
{
        arr=(1 -2 1)
        sum=0
        	for (( i=0; i<3; i++ ))
        do
		  		sum=$(( ${arr[$i]}+$sum ))
		  done
		  echo "Array's value...."
		  echo ${arr[@]}
    	  echo "Sum of the values are $sum"
} 
AddToZero
