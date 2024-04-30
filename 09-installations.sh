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

echo " is script proceeding"



