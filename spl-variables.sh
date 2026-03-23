#!/bin/bash
echo "All variables passed to this script are: $@"
echo "All Variables passed to this script are: $*"
echo "To print the script name: $0"
echo "Current directory is: $PWD"
echo "who is running the script user is: $USER"
echo "Home directory is: $HOME"
sleep 50 &
echo "PID of last command in background is: $!"
