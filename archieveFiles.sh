#! /bin/bash
for file in `ls *.log`
do
folderName=`echo $file | awk -F. '{print $1}'`; 
currentdateAgo=$(date --date="7 days ago" +%d%m%y); 
creationDate=`echo $file | awk -F. '{print $2}'`; 
if [[ "$creationDate" -le "$currentdateAgo" ]]
then
mkdir $folderName
mv $file $folderName;
fi
done
