#!/bin/bash

if [ -z "$1" ]
then 
	echo "username missing"
	exit 1
fi

echo "validating $1"
