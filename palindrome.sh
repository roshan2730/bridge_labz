#! /bin/bash
function CheckPallindrome()
{
        number=$1
        temp=$number
        sum=0
        rem=0
        while (( $number > 0 ))
        do
                rem=$(( $number%10 ))
                sum=$(( $rem + ($sum*10) ))
                number=$(( $number/10 ))
        done
        if (( $sum==$temp ))
		  then
				echo "Given number is pallindrome"
		  else
				echo "Given number is not a pallindrome"
		  fi
}
read -p "Enter a number to check whether pallindrome or not" num
CheckPallindrome num
