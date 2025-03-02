#!/bin/bash

DELAY=1 # Delay time in seconds for displaying results

while true; do
    clear
    echo "==============================="
    echo "       System Monitoring       "
    echo "==============================="
    echo "1) Display System Information"
    echo "2) Display Disk Space"
    echo "3) Display Home Directory Usage"
    echo "0) Exit"
    echo "-------------------------------"
    
    read -p "Select an option [0-3]: " CHOICE
    
    case "$CHOICE" in
        0)
            echo "Exiting the program..."
            break
            ;;
        1)
            echo "System Name: $HOSTNAME"
            uptime
            ;;
        2)
            echo "Disk Space Information:"
            df -h
            ;;
        3)
            echo "Checking Home Directory Usage:"
            if [[ $(id -u) -eq 0 ]]; then
                du -sh /home/*
            else
                du -sh "$HOME"
            fi
            ;;
        *)
            echo "Invalid option, please enter a number between 0 and 3."
            ;;
    esac
    
    sleep "$DELAY"
done

echo "Program terminated."
