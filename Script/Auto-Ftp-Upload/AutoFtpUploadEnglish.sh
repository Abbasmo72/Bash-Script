#!/bin/bash

# FTP server details
FTP_SERVER="ftp.example.com"   # Replace with your FTP server address
FTP_USERNAME="your_username"   # Replace with your FTP username
FTP_PASSWORD="your_password"   # Replace with your FTP password
FTP_DIRECTORY="/upload"        # Directory on the FTP server to upload files

# Local directory with files to upload
LOCAL_DIRECTORY="/path/to/files"   # Replace with the path to your local directory

# Log file to store upload status
LOG_FILE="ftp_upload.log"

# Function to upload files to the FTP server
upload_files() {
    echo "Starting upload to FTP server: $FTP_SERVER"
    
    # Connect to the FTP server and upload files
    ftp -inv $FTP_SERVER <<EOF
user $FTP_USERNAME $FTP_PASSWORD
cd $FTP_DIRECTORY
lcd $LOCAL_DIRECTORY
mput *
bye
EOF

    echo "Upload completed. Check $LOG_FILE for details."
}

# Run the function and log the output
upload_files | tee $LOG_FILE
