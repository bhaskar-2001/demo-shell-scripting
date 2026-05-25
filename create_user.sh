#!/bin/bash

<<help
this is shell script to 
create users

help

echo "=============== creation of user ===================="

read -p "Enter the username: " username

read -p "Enter the password: " password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "=============== creation of Finished ===================="

