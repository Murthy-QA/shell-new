#!/bin/bash
read num

while [ $num > 56 ]
do
    echo "This is above value of 56"
    break
done

while read line
do
  echo $line
done < file.txt