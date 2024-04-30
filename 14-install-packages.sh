#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log

validate(){
   if [ $? -ne 0 ]
    then 
       echo " $2 is ....FAILURE "
       exit 1
    else
       echo " $2 is .....SUCCESS"
   fi 
}

if [ $USERID -ne 0 ]
  then 
  echo "run the script with root access"
  exit 1
  else 
  echo "you are super user"
fi

for i in $@
do 

echo "package to install: $i"
  dnf list installed $i &>>$LOGFILE
  
  if [ $? -eq 0 ]
  then 
  echo " $i already installed ... skipping"
  else
  dnf install $i -y &>>$LOGFILE
  validate $? "installing $i"
  
  fi 

done 



