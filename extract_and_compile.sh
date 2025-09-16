#!/bin/bash
# Exit immediately if a command fails
set -e

# Ensure one argument is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 <number>"
  exit 1
fi

# Extract archive (must not remove/rename NthPrime.tgz)
tar -xzf NthPrime.tgz

# Move into extracted directory
cd NthPrime

# Compile the C program into an executable named NthPrime
gcc main.c nth_prime.c -o NthPrime

# Run the program with the provided argument
./NthPrime "$1"
