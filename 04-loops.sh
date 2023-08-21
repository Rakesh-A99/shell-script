#!/bin/bash
#author = Rakesh
#content: installing 3 services

DATE=$(date +%F )
SCRIPT_NAME=$0
USER_ID=$(id -u)
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
#Function
VALIDATE(){
    #$1 --> it will receive the argument1
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ... $R FAILURE $N"
        exit 1
    else
        echo -e "$2 ... $G SUCCESS $N"
    fi
}
if [ $USER_ID -ne 0 ]
then
    echo "please login with root ID for installation"
    exit 1 
fi
for i in $@
do
    yum list installed $i &>>$LOGFILE
    if [ $? -ne 0]
    then 
        echo "$i is not installed, let's install it"
        yum install $i -y &>>$LOGFILE
        validate $? "$i"
    else
        echo -e "$Y $i is already installed $N"
    fi
done



