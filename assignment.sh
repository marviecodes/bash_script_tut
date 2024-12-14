#!/bin/bash

# File to save memory usage
MEMORY_USAGE_FILE="/C:/Users/user/Desktop/bash/memory_usage.log"
# Email address to send the report
EMAIL_ADDRESS="nonsomarvie@gmail.com"

# Function to log memory usage
log_memory_usage() {
    echo "$(date): $(free)" >> $MEMORY_USAGE_FILE
}

# Function to send email
send_email() {
    mail -s "Daily Memory Usage Report" $EMAIL_ADDRESS < $MEMORY_USAGE_FILE
}

# Log memory usage
log_memory_usage

# Send email at midnight and clear the file
CURRENT_HOUR=$(date +%H)
CURRENT_MINUTE=$(date +%M)
if [ "$CURRENT_HOUR" -eq "00" ] && [ "$CURRENT_MINUTE" -eq "00" ]; then
    send_email
    > $MEMORY_USAGE_FILE
fi