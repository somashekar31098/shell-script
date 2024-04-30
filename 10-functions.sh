#!/bin/bash

USERID=$( id -u )

validate(){
   echo " exit status: $1 "
   echo " what are we doing: $2 "
}

if [ $USERID -ne 0 ]
then 
   echo "run the script with root access "
   exit 1
else
   echo "you are super user "

dnf install mysql -y
validate $? "installing mysql"

