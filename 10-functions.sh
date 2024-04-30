#!/bin/bash

USERID=$( id -u )

validate(){
   if [ $1 -ne 0 ]
    then 
       echo " $2 is ....FAILURE"
    else
       echo " $2 is ....sucess"
   fi 
}

if [ $USERID -ne 0 ]
then 
   echo "run the script with root access "
   exit 1
else
   echo "you are super user "
fi

dnf install mysql -y
validate $? "installing mysql"

dnf install git -y
validate $? "installation of git"
