#!/bin/bash

# make sure command line arguments are passed to the script
read -p "Please enter any number:" N

# Use for loop

for i in {1..10}
do
	
	echo "$N*$i=$(($N*$i))"
done

