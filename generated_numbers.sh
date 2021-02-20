#!/bin/bash
# To generate a 16-bit random number,
# Bash provides a RANDOM global variable that prints a random number between 0 to 32767 every time we access it.

echo $RANDOM $RANDOM $RANDOM $RANDOM

# As number % n will always return a value between 0 and n-1,
# we can get a random number between 0 to n by finding the modulus of n+1 with a random number.
# random number between 0 - 10
echo $(($RANDOM % 11))

# we can use {0..n} syntax. This will generate a sequence from 0 to n number with the step of
echo {0..10} # step: 1
echo $(seq 0 10) # step: 1
echo $(seq 0 2 10) # step: 2
echo $(seq 10 -2 4) # step: -2