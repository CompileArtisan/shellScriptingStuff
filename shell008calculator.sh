#!/bin/sh
echo "Enter first number:"
read n1
echo "Enter second number:"
read n2
echo "Enter +, -, *, or /:"
read n3

if [ "$n3" = "+" ]; then
    echo "Result: $(($n1 + $n2))"
elif [ "$n3" = "-" ]; then
    echo "Result: $(($n1 - $n2))"
elif [ "$n3" = "*" ]; then
    echo "Result: $(($n1 * $n2))"
elif [ "$n3" = "/" ]; then
    if [ "$n2" -eq 0 ]; then
        echo "Error: Division by zero is not allowed."
    else
        echo "Result: $(($n1 / $n2))"
    fi
else
    echo "Error: Invalid operation. Please enter +, -, *, or /."
fi
