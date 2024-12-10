#!/bin/bash

# This script demonstrates a solution to the race condition bug.

# Create two files
touch file1.txt
touch file2.txt

# Use a lock file to ensure exclusive access
lockfile=my.lock

# Write to file1
flock $lockfile
echo "Hello" > file1.txt
unflock $lockfile

# Write to file2
flock $lockfile
echo "World" > file2.txt
unflock $lockfile

# Concatenate the files
cat file1.txt file2.txt > output.txt

# Print the output
cat output.txt