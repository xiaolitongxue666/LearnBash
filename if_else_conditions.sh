#!/bin/bash
# In bash, test command is used to evaluate an expression.
# This command accepts a series of arguments which forms an expression when combined.
# When an expression is evaluated, it terminates the command with success 0 exit status code or error 1 exit status code.
# Based on these values, we can check if an expression is true or false.
#
# We use -gt argument to state a greater than operation.
test 5 -gt 9
#In the above example, all the arguments should be in the order given else test would not understand the operation.
#In this case, we are not sure if the expression 5 -gt 9 is true or false as nothing was printed to the terminal.
#In Bash, $? expression prints the status of the last command executed.
echo $?

#test command also has an alias command
#[. Don’t be surprised, it is actually a command.
#You can check that by which [ and it should return /bin/[.
[ 5 -lt 9 ]
echo $?

[ 5 -gt 9 ]
echo $?

# If you have multiple conditional expressions then
# you can use && and || for AND and OR operations respectively.
# We can also use parentheses to combine conditional expressions.
[ 5 -gt 3 ] && [ 6 -lt 5 ]
echo "Result 1: $?"

([ 5 -gt 3 ] && [ 6 -lt 5 ]) || ([ 3 -gt 1 ] && [ 6 -gt 5 ])
echo "Result 2: $?"

# 💡 (command) syntax runs the command in a subshell which is another shell process started by the main shell.
# If possible, it should be avoided as it will hamper the performance of our script.

# Any type of if block must end with fi to represent the end.

# If you want to write if and then block on the same line,
# use ; in between them.
# We can also construct conditional expression using variables.
MY_VALUE=3;
echo -n "Enter a number: "; read USER_VALUE;
if [ "$USER_VALUE" -gt "$MY_VALUE" ]; then
    echo "You are great."
else
    echo "You are not so great."
fi

# if block only
PROCEED=YES
if [ "$PROCEED" = "YES" ]
then
    echo "Performing task..."
fi

# string comparison
if [ 'proceed' == "proceed" ]; then echo "Performing task..."; fi
if [ 'Hello' != "hello" ]; then echo "Hello is not hello"; fi
if [ 'A' \< "a" ]; then echo "A is lower than a"; fi
if [ 'b' \> "a" ]; then echo "b is greater than a"; fi
if [ -z '' ]; then echo "String is empty"; fi
if [ -n 'something' ]; then echo "String is not empty"; fi
# numeric comparison
if [ 1 -eq 1 ]; then echo "1 is equal to 1"; fi
if [ 2 -ne 1 ]; then echo "1 is not equal to 2"; fi
if [ 0 -lt 1 ]; then echo "0 is less than 1"; fi
if [ 1 -gt 2 ]; then echo "1 is greater than to 2"; fi
if [ 1 -le 1 ]; then echo "1 is less than equal to 1"; fi
if [ 3 -ge 2 ]; then echo "3 is greater than equal to 2"; fi

VALUE=-10
if [ "$VALUE" -lt 0 ]; then
    echo "VALUE is less than 0"
elif [ "$VALUE" -eq 0 ]; then
    echo "VALUE is 0"
else
    echo "VALUE is greater than 0"
fi

VALUE=10
if [ "$VALUE" -lt 0 ]; then
    echo "VALUE is less than 0"
else
    echo "VALUE is greater than 0"
    if [ "$VALUE" -le 10 ]; then
        echo "VALUE is less than or equal to 10"
    else
        echo "VALUE is greater than 10"
    fi # end of nested if block
fi # end of parent if block