#!/bin/bash
for WORD in "Hello" "World" "*" "Nice" "to" "meet" "you."; do
    echo "The word is: $WORD"
done
#⥤ The world is: Hello
#⥤ The world is: World
#⥤ The world is: *
#⥤ The world is: Nice
#⥤ The world is: to
#⥤ The world is: meet
#⥤ The world is: you.

# As we learned from a CAUTION warning earlier,
# if we pass a string variable to a command,
# Bash breaks it into different words and pass them as a series of arguments.
FRUITS="Mango Apple Banana"
for FRUIT in $FRUITS; do
    echo "The fruit is: $FRUIT"
done
#⥤ The fruit is: Mango
#⥤ The fruit is: Apple
#⥤ The fruit is: Banana

FRUITS="Mango Apple Banana"
for FRUIT in "$FRUITS"; do
    echo "The fruit is: $FRUIT"
done
#⥤ The fruit is: Mango Apple Banana

touch users.json photos.json comments.json

#for FILE in `ls *.json`
for FILE in *.json
do
    echo "Doing something with: $FILE"
done
#⥤ Doing something with: users.json
#⥤ Doing something with: photos.json
#⥤ Doing something with: comments.json

for (( i = 0; i < 5; i++ )); do
    echo "The number is: $i"
done
#⥤ The number is: 0
#⥤ The number is: 1
#⥤ The number is: 2
#⥤ The number is: 3
#⥤ The number is: 4

for (( n = 0, i = 1; n < 5; n++, i += i )); do
    echo -n "$i, "
done
echo "" # for a newline
#⥤ 1, 2, 4, 8, 16,

COUNTER=0
for ((;;))
do
    if [ $COUNTER -eq 5 ]; then
        exit
    else
        echo "Current number is: $(( COUNTER++ ))"
    fi
done
#⥤ Current number is: 0
#⥤ Current number is: 1
#⥤ Current number is: 2
#⥤ Current number is: 3
#⥤ Current number is: 4

NUMBER=1
while [ $NUMBER -lt 5 ]; do
    echo "Number is: $((NUMBER++))"
done
#⥤ Number is: 1
#⥤ Number is: 2
#⥤ Number is: 3
#⥤ Number is: 4

NUMBER=1
until [ $NUMBER == 4 ]
do
    echo "Number is: $((NUMBER++))"
done









