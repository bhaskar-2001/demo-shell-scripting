#!/bin/bash

<<info 
this is script is explanation of 
the functions
info

function create_user {

read -p "Enter the username: " username

sudo useradd -m $username

echo "user created succesfully"
}

for (( i=1 ; i<=3 ; i++ ))
do 
	create_user
done
