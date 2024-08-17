#!/bin/bash

#Create a script that checks for memory usage
#Use exit codes 0 or 1 if a resource exceeds a threshold. 0 = Successful execution, 1 = failed execution/ threshold exceeded 

#Threshold values
Memory_Threshold=70	# 70% of memory usage

#Checking memory usage as a percentage
#Free command shows memory usage
#$3 is a field used in the Free command to show amount of used memory
#$2 is a field used in the Free command to show amount of total memory
#$3/$2 * 100 calculates how much memory is used as a percentage

memory_usage=$(free | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')

# Check if memory usage exceeds the threshold
# Use -gt (greater than flag) to check if memory usage is greater than the threshold
# Use exit codes 0 or 1 if a resource exceeds a threshold. 0 = Successful execution, 1 = failed execution/ threshold exceeded

if [ "$memory_usage" -gt "$MEMORY_THRESHOLD" ]; then
    echo "Memory usage is too high: ${memory_usage}%"
    exit 1
else
    echo "Memory usage is within acceptable limits: ${memory_usage}%"
    exit 0
fi


