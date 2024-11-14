#!/bin/bash

# Number of online users
echo "Number of online users:"
who | wc -l

# Access types of users
echo -e "\nAccess types of users:"
for user in $(who | awk '{print $1}'); do
    echo "$user: $(groups $user | awk -F: '{print $2}')"
done

# Linux version
echo -e "\nLinux version:"
lsb_release -a

# System uptime
echo -e "\nSystem uptime:"
uptime -p
