#!/bin/bash

# Function to clean temporary files
clean_temp_files() {
    echo "Cleaning temporary files..."
    rm -rf /tmp/*
    echo "Temporary files cleaned."
}

# Function to clean system cache
clean_system_cache() {
    echo "Cleaning system cache..."
    sync; echo 1 > /proc/sys/vm/drop_caches
    echo "System cache cleaned."
}

# Function to clean user cache (e.g., browser cache)
clean_user_cache() {
    echo "Cleaning user cache..."
    rm -rf ~/.cache/*
    echo "User cache cleaned."
}

# Run all cleaning functions
clean_temp_files
clean_system_cache
clean_user_cache

echo "Cleanup complete."
