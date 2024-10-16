#!/bin/bash

# آدرس سایتی که برای پینگ استفاده می‌شود
TARGET="google.com"

# بررسی اتصال به اینترنت با استفاده از پینگ
ping -c 1 $TARGET &> /dev/null

# بررسی وضعیت پینگ
if [ $? -eq 0 ]; then
    echo "You are connected to the internet."
else
    echo "You are not connected to the internet."
fi
