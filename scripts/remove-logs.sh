#!/bin/bash

folder_path="./appdata"  # Replace with the path to your folder

# Define the age limit for log files (1 day in seconds)
age_limit=$((24 * 60 * 60))

# Log start time
echo "$(date): Script started"

# Find and delete log files older than the age limit, excluding /nfs and /smb directories
find "$folder_path" \
  \( -path "/nfs" -o -path "/smb" \) -prune -o \
  -type f \( -name "*.log" -o -name "*.log.*" \) -mtime +1 \
  -exec echo "Deleting: {}" \; -exec rm {} \;

# Log end time
echo "$(date): Script completed"

