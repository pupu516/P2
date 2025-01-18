#!/bin/bash

echo "Dear collaborators, this script will help you delete all files in a target directory."
echo "Please enter the name of the target directory:"
read target_directory

echo "Searching for the directory ..."
found_directory=$(find . -type d -name "$target_directory" 2>/dev/null)
if [ -z "$found_directory" ]; then
  echo "Error: Directory named '$target_directory' not found under this directory."
  exit 1
fi

echo "Directory found: $found_directory"

echo "Are you sure you want to delete all files inside that directory? (y/n)"
read delete_confirmation

if [ "$delete_confirmation" == "y" ]; then
  echo "Deleting all files in '$found_directory'..."
  rm -r "$found_directory"/*
  echo "All files in '$found_directory' have been successfully deleted!"
else
  echo "No files were deleted."
fi

