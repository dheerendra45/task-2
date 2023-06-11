#!/bin/bash

# if modified dir not  exist
modified_dir="${HOME}/Desktop/Modified"

if [ ! -d "$modified_dir" ]; then
  echo "The 'Modified' directory does not exist."
  exit 1
fi
#if modified dir exist than print date and time inside the file
current_datetime=$(date +"%Y-%m-%d_%H-%M-%S")

# Iterate through each file in the "Modified" directory and append the current date and time
for file in "$modified_dir"/*; do
  if [ -f "$file" ]; then
    echo "$(cat "$file")" >> "$file"
    echo " current date and time to: $file"
  fi
done 

