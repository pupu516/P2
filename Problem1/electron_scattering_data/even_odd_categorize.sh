#!/bin/bash

# Create "odd" and "even" directories if they don't already exist
mkdir -p odd
mkdir -p even

# Loop through all .bin files in the current directory
for file in *.bin; do
  # Extract the numeric index from the filename
  index=$(echo "$file" | grep -oP '\d+(?=\.bin)')

  # Check if the index is odd or even
  if ((index % 2 == 0)); then
    # Move file to the "even" directory
    mv "$file" even/
  else
    # Move file to the "odd" directory
    mv "$file" odd/
  fi
done

echo "Files have been successfully categorized into 'odd' and 'even' directories."

