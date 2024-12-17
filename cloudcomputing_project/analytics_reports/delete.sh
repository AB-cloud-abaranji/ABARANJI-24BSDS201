#!/bin/bash

# Define the directory to clean up
TARGET_DIR="analytics_reports"

# Check if the directory exists
if [ ! -d "$TARGET_DIR" ]; then
    echo "Directory $TARGET_DIR does not exist."
    exit 1
fi

# Find and delete empty directories
find "$TARGET_DIR" -type d -empty -delete

echo "Empty subdirectories in $TARGET_DIR have been deleted."
