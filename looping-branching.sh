#!/bin/bash

# This script demonstrates the use of loops and branching.

# two different ways to write the same loop.
# while (( i <= 10 )); do  - number comparison
# while [ $i -le 10 ]; do  - string comparison

# While loop
i=1

while (( i <= 10 )); do
  echo "$i"
  ((i += 1))
done

# For loop
for i in {90..100}; do
  echo "$i"
done

