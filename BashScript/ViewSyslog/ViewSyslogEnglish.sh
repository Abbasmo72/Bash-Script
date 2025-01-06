#!/bin/bash

# Check if the user has root privileges
if [ "$(id -u)" -ne 0 ]; then
  echo "Please run this script with root privileges."
  exit 1
fi

# Path to the log file
LOG_FILE="/var/log/syslog"

# Check if the log file exists
if [ ! -f "$LOG_FILE" ]; then
  echo "Log file $LOG_FILE not found."
  exit 1
fi

# Display the last 30 lines of the log file
echo "Displaying the last 30 lines of the system log file:"
tail -n 30 "$LOG_FILE"
