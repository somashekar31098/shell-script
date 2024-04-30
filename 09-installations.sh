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
 
if [ $? -ne 0 ]
then  
  echo " installation of mysql is failure"
  exit 1
 else
  echo "installation of mysql is success"
fi 

dnf install git -y
then  
  echo " installation of git is failure"
  exit 1
 else
  echo "installation of git is success"
fi 



