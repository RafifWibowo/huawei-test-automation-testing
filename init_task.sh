#!/bin/bash

# Create /home/cron directory
mkdir -p /home/cron
echo "Created /home/cron directory."

# Absolute paths for cron jobs
cron_directory="/home/cron"
resource_url="https://drive.google.com/uc?id=1zO8ekHWx9U7mrbx_0Hoxxu6od7uxJqWw&export=download"

# Add cron jobs

# Cron job to collect resources
(crontab -l 2>/dev/null; echo "0 8,12,15 * * * wget -O \"${cron_directory}/cron_\$(date +\%Y\%m\%d_\%H\%M).csv\" \"$resource_url\"") | crontab -
echo "Added cron job for collecting resources."

# Cron job to clean old files
(crontab -l 2>/dev/null; echo "* * * * * find ${cron_directory} -type f -mtime +30 -exec rm {} \;") | crontab -
echo "Added cron job for cleaning old files."
