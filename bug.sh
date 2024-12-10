#!/bin/bash

# This script demonstrates a race condition bug.

# Create two files
touch file1.txt
touch file2.txt

# Start two processes simultaneously
(echo "Hello" > file1.txt &) 
(echo "World" > file2.txt &)

# Wait for both processes to finish
wait

# Concatenate the files
cat file1.txt file2.txt > output.txt

# Print the output
cat output.txt