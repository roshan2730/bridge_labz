#!/bin/bash
echo -e "\n 1.Head \n 2.Tail \n"
count=0
while (( $count != 11 ))
do
        toss=$(( RANDOM%2+1 ))
        read -p "Enter then Value " value
        if (( $toss == $value ))
        then
				count=$(( $count+1 ))
				echo "You won $count times "
		  else
				echo "You Lost"
		  fi
done
