#!/bin/bash

USERID=$(id -u)

validate(){
    echo "exit status : $1"
    echo " what are we doing : $2"    
}

if [ $USERID -ne 0 ]
then
   echo " please run the script with root access "
   exit 1 #manually exit if error comes
else
  echo " you are super user "
fi

dnf install mysql -Y
validate $1 " installation of  mysql"
 if 
   [$? - ne o]
then 
  echo "installing .... FAILURE"
else
  echo "installing ..... SUCCESS"
fi

