#!/bin/bash

# Beginner-friendly path converter:
# turns Windows backslashes into forward slashes for Git Bash.

if [ -n "$1" ]; then
	# If you passed a path as an argument, use it.
	input_path="$1"
else
	# Otherwise, ask for a path.
	echo "Paste your Windows path (example: C:\\Users\\ryant\\OneDrive):"
	read -r input_path
fi

# Replace every backslash with a forward slash.
output_path="${input_path//\\//}"

echo "$output_path"