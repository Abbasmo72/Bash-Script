#!/bin/bash

DELAY=1 # زمان تأخیر در نمایش نتایج

while true; do
    clear
    echo "==============================="
    echo "       سیستم مانیتورینگ       "
    echo "==============================="
    echo "1) نمایش اطلاعات سیستم"
    echo "2) نمایش فضای دیسک"
    echo "3) نمایش میزان استفاده از فضای خانگی"
    echo "0) خروج"
    echo "-------------------------------"
    
    read -p "گزینه مورد نظر را انتخاب کنید [0-3]: " CHOICE
    
    case "$CHOICE" in
        0)
            echo "خروج از برنامه..."
            break
            ;;
        1)
            echo "نام سیستم: $HOSTNAME"
            uptime
            ;;
        2)
            echo "اطلاعات فضای دیسک:"
            df -h
            ;;
        3)
            echo "بررسی فضای خانه کاربر:"
            if [[ $(id -u) -eq 0 ]]; then
                du -sh /home/*
            else
                du -sh "$HOME"
            fi
            ;;
        *)
            echo "گزینه نامعتبر، لطفاً عددی بین 0 تا 3 وارد کنید."
            ;;
    esac
    
    sleep "$DELAY"
done

echo "برنامه پایان یافت."
