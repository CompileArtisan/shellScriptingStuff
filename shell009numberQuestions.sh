#!/bin/sh

# To find:
# 1. Factorial of a number
# 2. Square root of a number
# 3. Sum of even numbers
# 4. Whether a number is prime or not
# 5. Whether a number is an Armstrong number or not

echo "Enter\n1. Factorial\n2. Square Root\n3. Sum of even Numbers\n4. Whether a number is prime or not\n5. Whether a number is an Armstrong number or not"
read x
if [ "$x" = "1" ]
then
    echo "Enter n to find n!: "
    read n
    fact=1
    for i in $(seq $n -1 1)
    do
        fact=$((fact * i))
    done
    echo "$n! = $fact"
elif [ "$x" = "2" ]
then
    echo "Enter a number to find its square root: "
    read n
    sqrt=$(echo "scale=2; sqrt($n)" | bc)
    echo "Square root of $n = $sqrt"
elif [ "$x" = "3" ]
then
    echo "Enter n to find sum of n even integers: "
    read n
    sum=0
    for i in `seq 2 2 $n`
    do
        sum=$((sum+i))
    done
    echo "Sum = $sum"
elif [ "$x" = "4" ]
then
    echo "Enter a number n to check primality: "
    read n
    prime=1
    for i in `seq 2 1 $((n-1))`
    do
        if [ $((n % i)) -eq 0 ]
        then
            prime=0
            break
        fi
    done
    if [ $prime -eq 1 ]
    then
        echo "Prime"
    else
        echo "Composite"
    fi
elif [ "$x" = "5" ]
then
    echo "Enter a number to check if it is an Armstrong number: "
    read n
    sum=0
    temp=$n
    while [ $temp -gt 0 ]
    do
        digit=$((temp % 10))
        sum=$((sum + digit * digit * digit))
        temp=$((temp / 10))
    done
    if [ $sum -eq $n ]
    then
        echo "$n is an Armstrong number"
    else
        echo "$n is not an Armstrong number"
    fi
else
    echo "incorrect selection"
fi