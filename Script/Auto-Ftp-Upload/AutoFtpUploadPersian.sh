#!/bin/bash

# مشخصات سرور FTP
FTP_SERVER="ftp.example.com"   # آدرس سرور FTP را با آدرس موردنظر جایگزین کنید
FTP_USERNAME="your_username"   # نام کاربری FTP خود را وارد کنید
FTP_PASSWORD="your_password"   # رمز عبور FTP خود را وارد کنید
FTP_DIRECTORY="/upload"        # دایرکتوری روی سرور FTP برای آپلود فایل‌ها

# دایرکتوری محلی حاوی فایل‌هایی که می‌خواهید آپلود کنید
LOCAL_DIRECTORY="/path/to/files"   # مسیر دایرکتوری محلی خود را اینجا وارد کنید

# فایل لاگ برای ذخیره وضعیت آپلود
LOG_FILE="ftp_upload.log"

# تابعی برای آپلود فایل‌ها به سرور FTP
upload_files() {
    echo "شروع آپلود به سرور FTP: $FTP_SERVER"
    
    # اتصال به سرور FTP و آپلود فایل‌ها
    ftp -inv $FTP_SERVER <<EOF
user $FTP_USERNAME $FTP_PASSWORD
cd $FTP_DIRECTORY
lcd $LOCAL_DIRECTORY
mput *
bye
EOF

    echo "آپلود به پایان رسید. برای جزئیات به $LOG_FILE مراجعه کنید."
}

# اجرای تابع و ثبت خروجی در فایل لاگ
upload_files | tee $LOG_FILE
