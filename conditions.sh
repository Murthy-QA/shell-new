#!/bin/bash
read num
if [ $((num % 2)) -eq 0 ]; then
    echo "This is even number"
else
    echo "this is odd number"
fi
