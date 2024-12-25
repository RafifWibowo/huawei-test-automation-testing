#!/bin/bash

chmod +x ./collect_data.sh
chmod +x ./clean_data.sh


cron_jobs=(
    "0 18,19 * * * ./collect_data.sh" 
    "0 20 * * * ./clean_data.sh"
)

# Add cron jobs
for cron_job in "${cron_jobs[@]}"; do
  echo "$cron_job" | crontab -
done