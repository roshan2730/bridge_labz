#!/bin/bash
function IsPallindrome()
{
	num=$1;
	sum=0
	rem=0
	temp=$num
	while (( $num>0 ))
	do
        rem=$(( $num%10 ))
        sum=$(( $rem + ($sum*10) ))
        num=$(( $num/10 ))
	done
	return $sum
}
function IsPrime(){
        number=$1
        count=0
        for (( i=2; i<$number/2; i++))
				do
					if (( $number%$i==0 ))
					then
						((count++))
					fi
				done
			if (( $count>0 ))
			then
				echo "$1 is not a Prime Number"	
				return 0
			else
				echo "$1 is Prime Number"
				return 1
			fi
}
read -p "Enter the number to check " n
IsPrime n
resultPrime=$?
IsPallindrome n
resultPoly=$?
echo "Palindrome of $number is : $resultPoly"

#echo "Check its Pallindrome value is prime or not" 
if (( $resultPrime==1 ))
then
	echo "Checking Pallindrome Value is prime or not?" 
	IsPrime $resultPoly
fi
