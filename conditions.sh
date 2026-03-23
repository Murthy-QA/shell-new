#!/bin/bash
read num
if [ $((num % 2)) -eq 0 ]; then
    echo "This is even number"
else
    echo "this is odd number"
fi

userid= $(id -u)
echo "userid is: $userid"
if [ $userid -ne 0 ]; then
    echo "Error: Please take root access"
else   
    echo "Already in root user"
fi

if [ $? -eq 0 ]; then
    dnf install -y python3
fi
