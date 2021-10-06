#!/bin/bash

# This Bash Script takes 2 arguments
# Performs subtraction on two arguments and counts down the difference to 1
# Please give arguments that have atleast have a difference of 1

# Written by Evan

diff=0

# Check for args < 2
if [ $# -lt 2 ]
then
	echo -e "Alteast 2 arguments are needed to execute this script."
	echo -e "Exiting..."
	exit 1
# Check for args > 2
elif [ $# -gt 2 ]
then
	echo -e "No need for more than 2 arguments to execute this script."
	echo -e "Exiting..."
	exit 2
# Check for args == 2
elif [ $# -eq 2 ]
then
	# Check that the args are different 
	if [ $1 -eq $2 ]
	then
		echo -e "The difference of the 2 arguments are 0"
		echo -e "Exiting..."
		exit 3	
	# Check which arg is greater
	elif [ $1 -gt $2 ]
	then
		diff=$(( $1-$2 ))
		echo -e "The difference between $1 and $2 is $diff"
	else
		diff=$(( $2-$1 ))
		echo -e "The difference between $2 and $1 is $diff"
	fi
	# Display difference count down
	while [ $diff -gt 0 ]
	do
		echo -e "Count Down = $diff"
		((diff--))	
	done

fi
	
