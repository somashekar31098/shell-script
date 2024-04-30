#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log

if [ $USERID -NE O ]
  then 
  echo "run the script with root access"
  exit 1
  else 
  echo "you are super user"
fi

for i in $@
do 

echo "package to install: $id"

done 



