#!/bin/bash

# Set the threshold percentage for disk usage (e.g., 80%)
THRESHOLD=80

# Email settings
TO_EMAIL="your_email@example.com"
SUBJECT="Disk Space Alert"

# Get the disk usage percentage of the root partition (/)
DISK_USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//g')

# Check if disk usage exceeds the threshold
if [ "$DISK_USAGE" -gt "$THRESHOLD" ]; then
    # Compose the email body
    BODY="Warning: Disk usage on root partition has reached ${DISK_USAGE}%. Please take action to free up space."

    # Send the email alert
    echo "$BODY" | mail -s "$SUBJECT" "$TO_EMAIL"
    echo "Disk space warning email sent to $TO_EMAIL."
else
    echo "Disk usage is under control: ${DISK_USAGE}%"
fi
