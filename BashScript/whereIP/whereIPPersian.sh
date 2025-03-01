#!/usr/bin/env bash

# بررسی نصب بودن jq برای پردازش JSON
if ! [ -x "$(command -v jq)" ]; then
  echo 'خطا: jq نصب نیست. برای نصب به این لینک مراجعه کنید: https://stedolan.github.io/jq/download/'
  exit 1
fi

# بررسی اینکه آیا کاربر یک آرگومان (آدرس IP) وارد کرده است یا نه
if [[ $# -ne 1 ]]; then
    echo "لطفاً یک آدرس IP به عنوان ورودی وارد کنید. مثال:"
    echo "$0 15.45.0.1"
    exit 1
fi

# ایجاد لینک API برای دریافت اطلاعات آدرس IP
link=$(echo "http://ip-api.com/json/"$1)

# دریافت داده‌های JSON از API
data=$(curl $link -s) # گزینه -s برای جلوگیری از نمایش پیام‌های اضافی

# بررسی وضعیت پاسخ دریافتی
status=$(echo $data | jq '.status' -r)

if [[ $status == "success" ]]; then
    # استخراج اطلاعات مکان از پاسخ JSON
    city=$(echo $data | jq '.city' -r)
    regionName=$(echo $data | jq '.regionName' -r)
    country=$(echo $data | jq '.country' -r)

    # نمایش اطلاعات مکانی
    echo "$city, $regionName در $country."
fi
