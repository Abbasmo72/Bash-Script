#!/bin/bash

# بررسی اینکه آیا کاربر دسترسی ریشه دارد
if [ "$(id -u)" -ne 0 ]; then
  echo "لطفاً اسکریپت را با دسترسی ریشه اجرا کنید."
  exit 1
fi

# مسیر فایل لاگ مورد نظر
LOG_FILE="/var/log/syslog"

# بررسی وجود فایل لاگ
if [ ! -f "$LOG_FILE" ]; then
  echo "فایل لاگ $LOG_FILE پیدا نشد."
  exit 1
fi

# نمایش 30 خط آخر از فایل لاگ
echo "نمایش 30 خط آخر از فایل لاگ سیستم:"
tail -n 30 "$LOG_FILE"
