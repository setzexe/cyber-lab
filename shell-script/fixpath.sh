#!/bin/bash

# Fix Window paths for Git Bash by replacing backslashes with forward slashes.
# Name: fixpath.sh
# Usage: ./fixpath.sh "C:\Users\yourUser\path\to\file" or simply run ./fixpath.sh and enter the path when asked.
# Creator: cyberseverance (a.k.a. setz)

if [ -n "$1" ]; then 
    # Check's if input was provided. It is used if this is the case.
	input_path="$1" 
else 
    # Otherwise, it prompts user to enter the path manually.
	echo "Paste your Windows path (example: C:\\Users\\yourUser):"
	read -r input_path
fi

# Backslashes are replaced with forward slashes, and then the fixed path is outputted.
output_path="${input_path//\\//}"
echo "$output_path"