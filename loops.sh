#!/bin/bash
# read i
for i in {1..5}
do
  if [ $i -eq 3 ]; then
    continue
  fi
  echo $i
done

for j in {1..5}
do
  if [ $j -eq 3 ]; then
    break
  fi
  echo $j
done

services=("nginx" "python3")
for service in "${services[@]}"
do
    echo "Installing $service"
    sudo dnf install -y $service
done
