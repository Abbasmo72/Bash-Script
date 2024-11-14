#!/bin/bash

# تعداد کاربران آنلاین
echo "تعداد کاربران آنلاین:"
who | wc -l

# نوع دسترسی کاربران
echo -e "\nنوع دسترسی کاربران:"
for user in $(who | awk '{print $1}'); do
    echo "$user: $(groups $user | awk -F: '{print $2}')"
done

# نسخه لینوکس
echo -e "\nنسخه لینوکس:"
lsb_release -a

# مدت زمان روشن بودن سیستم
echo -e "\nمدت زمان روشن بودن سیستم:"
uptime -p
