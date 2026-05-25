#!/bin/bash


read -p  "Username is :" username

read -p "password is :" password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "============ user created ==========================="

echo "====================================================="

echo "================= Deleting the user ================="

sudo userdel  "$username"

echo "================= user deleted ==================="

cat /etc/passwd | grep $username | wc | awk '{print $1}'

echo "as wc is 0 user not exists"
