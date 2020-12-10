function Repeated()
{
	declare -a arr
   j=0
	for (( i=1; i<100; i++ )) 
	do      
		if (( $i%11==0 ))
      then
			arr[$j]=$i
			((j++))
		fi
	done
	echo ${arr[@]}
}
Repeated
