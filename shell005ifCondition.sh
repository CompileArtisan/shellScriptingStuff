#!/bin/sh

# if condition
echo "enter the first number: "
read x
echo "enter the second number: "
read y
if [ $x -gt $y ]
then
    echo "$x is greater than $y"
else
    echo "$y is greater than $x"
fi
# here we use the -gt operator to check if the first number is greater than the second number
# we use the -lt operator to check if the first number is less than the second number
# we use the -eq operator to check if the first number is equal to the second number

