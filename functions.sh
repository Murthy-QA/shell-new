#!/bin/bash
# FUNCTIONS IN SHELL SCRIPTING
if [ ${userid} -ne 0 ]; then
    echo "Please run with ROOT access"
    exit 1
fi
validate()
{
    if [ $? -ne 0 ]; then
        echo -e "Installing $2 .. FAILURE"
    else    
        echo -e "Installing $2 .. SUCCESS"
    fi
}
dnf install -y nginx
if [ $? -ne 0 ]; then
    sudo su -
    dnf install nginx -y
    validate $? "nginx"
else
    echo -e "ALready installed"
fi