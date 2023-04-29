#!/bin/bash
#########to be executed every 1 min to monitor system load, and add it to file /var/log/system-load. The script must be run using root.
##Exit codes:
##	0 : Normal terminated

while true
do
    # Get the system load average for the last minute
    load=$(uptime)

    # Get the current date and time
    timestamp=$(date +"%Y-%m-%d %H:%M:%S")

    # Write the system load and timestamp to the log file
    echo "${timestamp} - System load: ${load}" >> /var/log/system-load.log

    # to log it every 1 minute
    sleep 60
done

exit 0
