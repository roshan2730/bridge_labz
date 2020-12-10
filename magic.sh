#!/bin/bash
read -p "Enter any number between 1 TO 100 " num 
i=100
count=0
         if [ $num -ge 100 ]
         then
				echo "Please enter between 1 to 100"
			fi
			while [ "$i" -ne "$num" ]
			do
				if [ "$i" -lt "$num" ]
        		then	
					i=$(( $i/2 ))
        			count=$(($count+1))
				elif [ "$i" -gt "$num" ]
				then
					i=`expr $i + $i / 2`
					count=$(($count+1))
				else
					echo "Found the number"
					break 
				fi
			done
echo " $num.....$count operations"
