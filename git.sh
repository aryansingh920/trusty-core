#!/bin/bash

# Get the current time and date
current_time=$(date +"%Y-%m-%d %H:%M:%S")

# Read the commit message from the user
echo "Enter your commit message:"
read commit_message

# Append the current time and date to the commit message
commit_message_with_date="$commit_message | $current_time "

# Perform git commands
git add .
git commit -m "$commit_message_with_date"
git push

# Update README.md with the commit message
commit_line="Latest Commit: $commit_message_with_date"
awk -v commit_line="$commit_line" 'NR==7 {$0=commit_line} 1' README.md > temp.md && mv temp.md README.md

# Print success message
echo "Commit successful! README.md updated."
