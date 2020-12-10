#! /bin/bash
date=$(date +%d%m%Y)
for file in *.log.1;
do
	if [ -f "$file" ]
	then
		basename="${file%%.*}"
		extension="${file#*.}" 
		baseExtension="${extension%.*}"
		mv "$file" "$basename"-"$date.$baseExtension"
	else
		echo "No .log file found"
	fi
done
