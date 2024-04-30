#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$($0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log


validate(){
   if [ $1 -ne 0 ]
    then 
       echo " $2 is ....FAILURE"
       exit 1
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

dnf install mysql -y &>>$LOGFILE
validate $? "installing mysql"

dnf install git -y &>>$LOGFILE
validate $? "installation of git"
