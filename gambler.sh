#!/bin/bash
rupee=100
count=0
while (( $rupee!=0 || $rupee!=200 ))
do
	betResult=$(( RANDOM%2 ))
	read -p "Enter 1 for bet " bet
	if (( $bet == $betResult ))
	then
		count=$(( $count+1 ))
		rupee=$(( $rupee+1 ))
		echo "Youu won total $count times and current money is $rupee"
	else	
		rupee=$(( $rupee-1 ))
		echo "You lost this time and current money is $rupee"
	fi
done

