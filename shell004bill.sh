#!/bin/sh
pen=10
pencil=5
noPen=10
noPencil=15
totalCost=`expr $pen \* $noPen + $pencil \* $noPencil`
echo "The total cost is $totalCost"