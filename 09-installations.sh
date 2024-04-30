#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
  echo "run the script with root access"
  exit 1
else 
  echo " you are super user"
fi

dnf install mysql -y
 
if [ $? -0 ]
then  
  echo " installation of mysqll is failure"
  exit 1
fi 
echo " is script proceeding"



