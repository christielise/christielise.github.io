#!/bin/bash

# Change to the directory containing the files
cd /designs

# Create a variable to keep track of the file number
i=1

# Loop through each file in the directory
for file in *; do
  # Check if the file is a regular file (not a directory)
  if [ -f "$file" ]; then
    # Create a new filename with the format "numbered-list-x"
    new_name="design$i"
    
    # Append the file extension to the new filename
    extension="${file##*.}"
    new_name="$new_name.$extension"
    
    # Rename the file
    mv "$file" "$new_name"
    
    # Increment the file number
    i=$((i+1))
  fi
done