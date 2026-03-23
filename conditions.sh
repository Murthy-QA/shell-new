#!/bin/bash
read num
if [ $((num % 2)) -eq 0 ]; then
    echo "This is even number"
else
    echo "this is odd number"
fi
if [ $? -eq 0 ]; then
    echo "Above condition is true"
else   
    echo "Above condition is false"
fi
