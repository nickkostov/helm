#!/bin/bash

# Check for uncommitted changes
edited_files=$(git status --short | awk '{print $2}')

if [ -z "$edited_files" ]; then
  echo "No files have been edited. Exiting."
  exit 0
fi

# Format the list of edited files
edited_list=$(echo "$edited_files" | tr '\n' ',' | sed 's/,$//')

# Create a commit message
commit_message="Edited - $edited_list"

# Add all changes to staging
git add .

# Commit the changes with the generated message
git commit -m "$commit_message"

# Push the commit to the repository
git push

echo "Changes committed and pushed successfully with message: \"$commit_message\""