#!/bin/sh

# multiplication
echo "enter the first number: " 
read x
echo "enter the second number: " 
read y
product=`expr $x \* $y`
echo "The product of the numbers is $product" 

# here we use backticks for command substitution
# we use the expr command to evaluate an expression
# we use the \* to escape the * character


