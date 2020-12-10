#!/bin/bash -x
read -p "Enter the name of Directory which you want to searh: " 
directory
if [ ! -d "$directory" ]
	then
		echo "Directory Not found.... Creating a new directory with same name"
 		mkdir -p "$directory"
else
	echo "Directory Found $directory"
fi
