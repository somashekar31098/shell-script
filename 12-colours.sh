#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
Y="\e[32m"
N="\e[Om"

validate(){
   if [ $1 -ne 0 ]
    then 
       echo " $2 is .... $R FAILURE $N "
       exit 1
    else
       echo " $2 is .... $R sucess $N"
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