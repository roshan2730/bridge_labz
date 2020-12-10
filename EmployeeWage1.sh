##!/bin/bash -x 
echo Welcome To Employee Wage problem.

#usecase to show the wage if day or working hour which ever comes first with the help of function.

#Declaring constants.
WAGEPERHOUR=20
HOURCONDITION=100
MONTH=20
#Declaring varriables.
day=1
hour=0

#Logic for checking the working hour under the function.
function workHour() {
	case $1 in
			1)
				workingHour=8
			;;
			2)
				workingHour=4
			;;
			*)
				workingHour=0
			;;
		esac
		echo $workingHour
}
function dailyWage() {
	local timeHour=$1
	dailyIncome=$(($timeHour*$WAGEPERHOUR))
	echo $dailyIncome
}
while(( day<=MONTH && hour<HOURCONDITION ))
do
	randomValue=$((RANDOM%3))
	emphour=$(workHour $randomValue)
	hour=$(($hour+$emphour))
	wageArray[day]=$(dailyWage $emphour)
	((day++))
done

#Printing the total salary, Daily income and Days as well.
salary=$(($WAGEPERHOUR*$hour))
	echo "Total Salary will be: $salary"
	echo "Daily income: ${wageArray[@]}"
	echo "Days: ${!wageArray[@]}"
