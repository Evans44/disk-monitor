#!/bin/bash

# Set threshold percentage (e.g., 80%)
THRESHOLD=80

# Email address to send alert (replace with yours)
EMAIL="newdream23@outlook.com"

# Get disk usage
df -h | grep '^/dev/' | while read line; do
  USAGE=$(echo $line | awk '{print $5}' | sed 's/%//')
  PARTITION=$(echo $line | awk '{print $1}')

  if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "Disk space alert: $PARTITION is at ${USAGE}% usage" | mail -s "Disk Space Alert for $PARTITION" $EMAIL
  fi
done