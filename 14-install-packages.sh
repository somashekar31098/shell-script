#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log

validate(){
   if [ $1 -ne 0 ]
    then 
       echo " $i is installed skipping "
       exit 1
    else
       echo " $i is not installed , need to install"
   fi 
}

if [ $USERID -NE O ]
  then 
  echo "run the script with root access"
  exit 1
  else 
  echo "you are super user"
fi

for i in $@
do 

echo "package to install: $i"
  dnf list installed $i
  validate $1 "installing packages"
done 



