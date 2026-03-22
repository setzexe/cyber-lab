#!/bin/bash

# This script automates the process of committing to Git. 
# It adds, commits, then pushes to the main branch. Commit message is taken as the input.
# Name: commit.sh
# Usage: ./commit.sh "Your commit message here"
# Creator: cyberseverance (a.k.a. setz)

# Input validation. Confirms an input was provided. Exits otherwise.
if [ -z "$1" ]; then
    echo "Please provide a commit message."
    exit 1
fi

# Navigates to the root of the Git repo, adds all changes, commits input, then pushes.
cd "$(git rev-parse --show-toplevel)"
git add .
git commit -m "$1"
git push origin main

