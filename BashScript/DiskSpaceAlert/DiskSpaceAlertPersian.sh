#!/bin/bash

# تعیین درصد آستانه برای استفاده از دیسک (مثلاً 80%)
THRESHOLD=80

# تنظیمات ایمیل
TO_EMAIL="your_email@example.com"
SUBJECT="هشدار فضای دیسک"

# دریافت درصد استفاده از دیسک در پارتیشن ریشه (/)
DISK_USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//g')

# بررسی اینکه آیا استفاده از دیسک از آستانه عبور کرده است
if [ "$DISK_USAGE" -gt "$THRESHOLD" ]; then
    # ایجاد متن ایمیل
    BODY="هشدار: استفاده از دیسک در پارتیشن ریشه به ${DISK_USAGE}% رسیده است. لطفاً اقداماتی برای آزادسازی فضا انجام دهید."

    # ارسال ایمیل هشدار
    echo "$BODY" | mail -s "$SUBJECT" "$TO_EMAIL"
    echo "ایمیل هشدار فضای دیسک به $TO_EMAIL ارسال شد."
else
    echo "استفاده از دیسک تحت کنترل است: ${DISK_USAGE}%"
fi
