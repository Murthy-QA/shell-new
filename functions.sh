#!/bin/bash
# FUNCTIONS IN SHELL SCRIPTING
if [ $UID -ne 0 ]; then
    echo "Please run with ROOT access"
    exit 1
fi
validate()
{
    if [ $1 -ne 0 ]; then
        echo -e "Installing $2 .. FAILURE"
    else    
        echo -e "Installing $2 .. SUCCESS"
    fi
}
if dnf list installed nginx &>/dev/null; then
    echo "nginx already installed"
fi
if [ $? -ne 0 ]; then
    dnf install -y nginx
    validate $? "nginx"
else
    echo -e "Already installed"
fi