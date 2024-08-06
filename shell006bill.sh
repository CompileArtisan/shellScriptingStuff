#!/bin/sh

# to calculate discount and final bill amount
# if billAmount < 100:       2% discount
# if 100 <= billAmount < 500: 5% discount
# if billAmount > 500:       10% discount

echo "enter the bill amount: "
read billAmount
if [ $billAmount -lt 100 ]
then
    discount=$((billAmount * 2 / 100))
    finalAmount=$((billAmount - discount))
    echo "The discount applied is $discount and the final bill amount is $finalAmount"
elif [ $billAmount -ge 100 -a $billAmount -lt 500 ]
then
    discount=$((billAmount * 5 / 100))
    finalAmount=$((billAmount - discount))
    echo "The discount applied is $discount and the final bill amount is $finalAmount"
else
    discount=$((billAmount * 10 / 100))
    finalAmount=$((billAmount - discount))
    echo "The discount applied is $discount and the final bill amount is $finalAmount"
fi