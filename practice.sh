#!/bin/bash


echo "=============== User creation =========================="

read -p  "Username is :" username

read -p "password is :" password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "============ user created ==========================="

echo "====================================================="

echo "================= Deleting the user ================="

sudo userdel -r "$username" 2>/dev/null

echo "================= user deleted ==================="

if grep -q "^username:" /etc/passwd; then
	echo "user exists"
else 
	echo "user don't exists"
fi
