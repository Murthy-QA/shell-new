#!/bin/bash
while read server
do
  ssh $server "df -h"
done < servers.txt