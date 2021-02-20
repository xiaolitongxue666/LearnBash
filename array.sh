#!/bin/bash

ARRAY=(Apple "Orange" Mango)
echo ${ARRAY[0]} # $ARRAY[0] is not valid
echo "At index 1: ${ARRAY[1]}" # string interpolation
ARRAY[2]=Banana # update value at index 2
ARRAY[3]=Papaya # add new value at index 3
echo ${ARRAY[2]} ${ARRAY[3]}
#⥤ Apple
#⥤ At index 1: Orange
#⥤ Banana Papaya

# As we know * represents a wildcard,
# when we use it as an index, we can get all elements in the array.
# Likewise, using * as an index in the syntax${#ARRAY[index]},
# we can calculate the length of an array.
echo ${ARRAY[*]}
echo "Length of ARRAY: ${#ARRAY[*]}"
#⥤ Apple Orange Banana Papaya
#⥤ Length of ARRAY: 4

GREETINGS=("Good Morning" "Good Afternoon")
echo "GREETINGS: ${GREETINGS[*]}"
for GREET in ${GREETINGS[*]}; do
    echo "GREET: $GREET"
done
#⥤ GREETINGS: Good Morning Good Afternoon
#⥤ GREET: Good
#⥤ GREET: Morning
#⥤ GREET: Good
#⥤ GREET: Afternoon

# From the above example, we can’t quite make sense of it.
# What is happening behind the scene when you write ${GREETINGS[*]} is,
# Bash is returning the array items in a single string.
# And to fix that, we use string interpolation.
GREETINGS=("Good Morning" "Good Afternoon")
for GREET in "${GREETINGS[*]}"; do
    echo "GREET: $GREET"
done
#⥤ GREET: Good Morning Good Afternoon

# Same goes with an array. "${ARRAY[*]}" syntax expands to a single word and that’s why we have the above problem.
# We just need to use @ as an index instead of * to make it expand into different words where a word is an actual item of the array.
GREETINGS=("Good Morning" "Good Afternoon")
for GREET in "${GREETINGS[@]}"; do
    echo "GREET: $GREET"
done
#⥤ GREET: Good Morning
#⥤ GREET: Good Afternoon
















