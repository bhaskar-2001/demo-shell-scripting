#!/bin/bash

echo "user creation"

read -p "Enter the username : " username
read -p "Enter the password : " password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "User creation completed"

echo "password change"

read -p "Enter the new password : " new_password

if echo "$username:$new_password" | sudo chpasswd; then
	echo "Password changes succesfully!!"
else
	echo "password chnages failed"
fi

echo "user deletion"

if sudo userdel -r "$username" 2>/dev/null; then
	echo "User deletion successfully"
else
	echo "Deletion failed!!"
fi

