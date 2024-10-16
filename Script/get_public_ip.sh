#!/bin/bash

# استفاده از یک سرویس آنلاین برای دریافت IP عمومی
PUBLIC_IP=$(curl -s ifconfig.me)

# بررسی اینکه آیا IP دریافت شده است یا خیر
if [ -z "$PUBLIC_IP" ]; then
    echo "Could not retrieve public IP address."
else
    echo "Your public IP address is: $PUBLIC_IP"
fi