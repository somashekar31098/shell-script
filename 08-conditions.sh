#!/bin/bash

number=$1

if [ $number -gt 10 ]
 then
   echo "given number $number is grater than 10"
 else
   echo "given number $number is lesser than 10"
fi

# -gt , -eq , -lt , -ge , -le