#!/bin/bash


echo "=============== User creation =========================="
functio user_create {
read -p  "Username is :" username

read -p "password is :" password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"
}
echo "============ user created ==========================="

echo "====================================================="

function user_deletion {
echo "================= Deleting the user ================="

sudo userdel -r "$username" 2>/dev/null

echo "================= user deleted ==================="
}

function user_validation {
if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ];
then
        echo "user does not exits"
else
        echo "user exists"
fi
}

user_create
user_deletion
user_validation
