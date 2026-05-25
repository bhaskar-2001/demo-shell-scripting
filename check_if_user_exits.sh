#!/bin/bash

<<help
This script will check if the
user is exits or not

help

read -p "Enter the user the username: " username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

echo "$count"

if [ $count -eq 0 ];then 
	echo "user does not exits!!"
else
	echo "user exits"
fi
