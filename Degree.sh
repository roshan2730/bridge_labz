#!/bin/bash
function conversion()
{
	echo -e "Which Conversion you want to perform \n 1.Centigrate- Farenhite \n
 2.Farenhite-Centigrate"
   read choice
   case $choice in
		1) read -p "Enter the Centigrate value" degC 
				if (( $degC>=0 && $degC<=100 )) 
				then
					degF=$(echo | awk "{print $degC*9/5+32}")
					echo "$degF"
				else
					echo "Enter the Centigrate value between 0-100 only"
				fi
							;;
		2) echo "Enter the Farenhite value"
			read degF
				if (( $degF>=32 && $degF<=212 ))
				then
					degC=$(echo | awk "{print ($degF-32)*5/9}")
					echo "$degC"
				else
					echo "Enter the Farenhite Value between 32-212 only"
				fi
						;;
		*) echo "Enter the correct Choice"
				;;
	esac
}
conversion
