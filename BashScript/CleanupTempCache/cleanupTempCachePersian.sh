#!/bin/bash

# تابعی برای پاک کردن فایل‌های موقت
clean_temp_files() {
    echo "در حال پاک کردن فایل‌های موقت..."
    rm -rf /tmp/*
    echo "فایل‌های موقت پاک شدند."
}

# تابعی برای پاک کردن کش سیستم
clean_system_cache() {
    echo "در حال پاک کردن کش سیستم..."
    sync; echo 1 > /proc/sys/vm/drop_caches
    echo "کش سیستم پاک شد."
}

# تابعی برای پاک کردن کش کاربر (مثلاً کش مرورگر)
clean_user_cache() {
    echo "در حال پاک کردن کش کاربر..."
    rm -rf ~/.cache/*
    echo "کش کاربر پاک شد."
}

# اجرای تمامی توابع پاکسازی
clean_temp_files
clean_system_cache
clean_user_cache

echo "پاکسازی کامل شد."
