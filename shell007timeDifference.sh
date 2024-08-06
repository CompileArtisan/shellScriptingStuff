#!/bin/bash

# to calculate the time difference between two time values provided in HH:MM:SS format
echo "Enter time 1 in HH:MM:SS format: "
read time1
echo "Enter time 2 in HH:MM:SS format: "
read time2

# Convert HH:MM:SS to seconds
time1_in_seconds=$(echo $time1 | awk -F: '{ print ($1 * 3600) + ($2 * 60) + $3 }')
time2_in_seconds=$(echo $time2 | awk -F: '{ print ($1 * 3600) + ($2 * 60) + $3 }')
# awk basically splits the input string using the delimiter ":" and then calculates the total seconds
# The first field $1, $2, and $3 are the 3 parts of the time string separated by ":"
# | is a pipe that sends the output of the first command to the input of the second command



# Calculate the difference in seconds
difference_in_seconds=$((time1_in_seconds - time2_in_seconds))

# Convert the difference back to HH:MM:SS format
hours=$((difference_in_seconds / 3600))
minutes=$(( (difference_in_seconds % 3600) / 60 ))
seconds=$((difference_in_seconds % 60))

# Print the result
printf "The time difference is %02d:%02d:%02d\n" $hours $minutes $seconds

