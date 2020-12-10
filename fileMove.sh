for f in *.txt; do

	if [ -f "$f" ]
	then
	 	filename="${f%.*}"
	 	#echo "$filename"
	 	if [ "$filename" ]
	 	then
        mkdir -p "$filename"
        mv "$f" "$filename"
	 	else
	 		echo ".txt file not found"
		fi
	else
		echo "No .txt file found"
	fi
done
