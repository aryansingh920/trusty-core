#!/bin/bash

# Get the current time and date
current_time=$(date +"%Y-%m-%d %H:%M:%S")

# Read the commit message from the user
echo "Enter your commit message:"
read commit_message

# Append the current time and date to the commit message
commit_message_with_date="$commit_message ($current_time)"

# Perform git commands
git add .
git commit -m "$commit_message_with_date"
git push
