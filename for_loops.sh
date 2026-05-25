#!/bin/bash

<<info

loops: any code you to want to repeat again and again based on the conditon
for loops conditios

1..10

start point = 1
ending point = 10
increment/decrement = + / -

info

for (( num=1 ; num<=10 ; num++))
do 
	echo "$num"
	echo "hello"
done
