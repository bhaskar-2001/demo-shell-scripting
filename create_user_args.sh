#!/bin/bash


echo "username is : $1"

echo "password is : $2"

sudo useradd -m "$1"

echo -e "$2\n$2" | sudo passwd "$1"

echo "======================= User Created ====================================="
