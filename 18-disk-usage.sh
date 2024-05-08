#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=6
MESSAGE=""

while IFS= read -r line
do
 USAGE=$( echo $line | awk -F " " '{print $6F}' |cut -d "%" -f1 )
 FOLDER=$( echo $line | awk -F " " '{print $NF}')
  
  if 
      [ $USAGE -ge $DISK_THRESHOLD ]
then 
     MESSAGE+="$FOLDER is greater than $DISK_THRESHOLD ,current usage = $USAGE \n"
 fi

done <<< $DISK_USAGE 

echo -e "message = $MESSAGE"

echo "$MESSAGE" | mail -s "disk usage data" somadaws1998@gmail.com