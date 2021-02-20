#!/bin/bash

# To declare a variable and assign with a value,
# use VARIABLE_NAME=VALUE expression (with no spaces in between).

CITY=New_York
NAME="John Doe"
AGE=26
EMAIL='john@doe.com'
GRADE=8.43
EMPLOYED=true

# echo adds a space automatically
# between two adjacent arguments (in the output) by default.

# From now on, ➡️ will represent the terminal output and ⬅️ as a user input.
# ~$ symbol will be used to represent command input line on the terminal.

# To print a variable declared in the script,
# we need to put $ as the prefix for the VARIABLE_NAME like $VARIABLE_NAME.

echo "$NAME" $AGE $EMAIL $GRADE $EMPLOYED

# We can read user input in the terminal using read command.
# When the user input the text and hit enter, that entire text will be saved in a variable.

# echo command with -n flag,
# this will prevent adding a newline to the terminal so that user can input text on the same line.  ️
echo -n "Enter a name:"
read NAME
echo "Your name is:" $NAME

# If a command outputs something to the STDOUT,
# we can save it in a variable. $(command) expression will execute the command and returns the output of the command.
# We can save this output in a variable. We can also wrap a command in backticks(`) which Bash will execute it and return the output.
PWD=$(pwd)
BASH_VERSION=`bash --version`
echo $PWD
echo $BASH_VERSION

# String interpolation
FIRST_NAME='John'
LAST_NAME='Doe'
echo $FIRST_NAME$LAST_NAME
FULL_NAME=$FIRST_NAME$LAST_NAME
echo $FULL_NAME

NUMBER=1
NUMBER+=2         # 1+2 => 12
NUMBER+=$NUMBER   # 12+12 => 1212
echo $NUMBER

# We can also substitute a variable in a string defined by double-quotes by directly putting it in with $ prefix
# as we would use outside or with ${VARIABLE_NAME} expression (no spaces inside it).
# We can also use this expression outside the string if we want.
FIRST_NAME='JOHN'
LAST_NAME='DOE'
# result: "JOHN DOE"
FULL_NAME="$FIRST_NAME ${LAST_NAME}"
# ${VAR} expression outside a string
echo Hello ${FULL_NAME}!

# But if we need to put single or double quote as a character in a string,
# we need to escape it with a backslash character.
echo "I am 'John' and I am \"AWESOME\"."
echo '"Sorry" for that'

# only double quotes are capable of string interpolation.
# If we tried string interpolation in single-quotes like '${VAR_NAME}',
# it will treat all the characters like normal characters and return it as is.
FIRST_NAME='JOHN'
echo "Hello ${FIRST_NAME}!;"
echo 'Hello ${FIRST_NAME}!;'

# command args that prints the number of arguments passed to it.

# we can avoid this by using string interpolation.
# We just need to wrap a variable in double-quotes.
# In bash, * is a special character that represents a wildcard.
# When passed as an argument to a command, * contains all the files in the current directory as a list.
# From the above example, with string interpolation,
# we are passing one string to the echo command which contains * as well in it and it’s not a separate argument anymore.
MESSAGE="I am a rock *"
echo $MESSAGE
echo "$MESSAGE"

#You can use exit command to stop the program.
echo "I am 'John' and I am '\"AWESOME\"."
#exit # exit program
echo '"Sorry" for that'





