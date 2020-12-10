#! /bin/bash
function ArrayPrimeFactor()
{
	num=$1
	temp=$num
	declare -a arr
	j=0
	while(( $num%2==0 ))
	do
		arr[$j]=2
		((j++))
		num=$(( $num/2 ))
	done
	a=$(echo "$num" | awk '{print sqrt($num)}') 
	a=${a%.*}
	for(( i=3; i<=$num; i=$(( $i+2 )) ))
	do
        while(( $num%$i==0 ))
        do
                arr[$j]=$i
                ((j++))
                num=$(( $num/$i ))
		  done
	done
        if (( $num>2 ))
        then
                arr[$j]=$num
		  fi
	echo "Prime Factor is......."
	echo ${arr[@]}
}
echo "Enter the value for prime factor " 
read value
ArrayPrimeFactor value
