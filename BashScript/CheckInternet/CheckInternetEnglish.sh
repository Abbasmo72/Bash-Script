#!/bin/bash

# Website address to be used for ping
TARGET="google.com"

# Check internet connection using ping
ping -c 1 $TARGET &> /dev/null

# Check the status of the ping
if [ $? -eq 0 ]; then
    echo "You are connected to the internet."
else
    echo "You are not connected to the internet."
fi
