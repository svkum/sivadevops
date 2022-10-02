#!/bin/bash
### sum of two numbers

Number1=$1
echo  "enter the number1"
read Number1

Number2=$2
echo  "enter the number2"
read Number2
sum=$(($Number1 + $Number2))
echo "The Sum= $sum"

