#!/bin/bash

# User-defined
hero="William Butcher"
villain="Homelander"

echo "The Boys ka hero hai $hero"
echo "The Boys ka villain hai $villain"

# pre-defined variables
echo "The Current user logged $USER"

# Taking input from the user
read -p "Father of Homelander is?" Father

echo "Homelander father is $Father"

#arguments

echo "Powerful supe: $1"

echo "2nd powerful supe: $2"

echo "main supes are : $@" 
