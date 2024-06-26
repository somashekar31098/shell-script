#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

R="\e[31m"
g="\e[32m"
Y="\e[33m"
N="\e[Om"

if [ -d $SOURCE_DIRECTORY ]
then
   echo -e "$G source directory exists $N"
else
   echo -e "$R make sure that $SOURCE_DIRECTORY exists $N"
 exit 1
fi

FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14)

while IFS= read -r line
do
   echo "deleting files: $line"
   rm -rf $line
done <<< $FILES
