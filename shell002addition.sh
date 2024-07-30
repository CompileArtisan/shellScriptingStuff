#!/bin/sh
echo "enter the first number: "
read x
echo "enter the second number: "
read y
sum=`expr $x + $y`
echo "The sum of the numbers is $sum"