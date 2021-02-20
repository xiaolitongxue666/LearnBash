#!/bin/bash

# use 'let' command
# Now we know that, based on the operation,
# Bash will convert string to appropriate data type.
let RESULT=1+1
echo $RESULT
echo RESULT

RESULT=1+1
echo $RESULT

let RESULT="1 + 1"
echo $RESULT

# We can use any arithmetic operation like +, -, * or /.
# We can also calculate the modulus using % operator.
# We can also increment or decrement a variable using VAR++ , ++VAR, VAR-- or --VARexpression.
NUMBER=1
let RESULT="++NUMBER"
echo $RESULT
echo $NUMBER

# We can also declare a variable inside the expression
# using let or perform an arithmetic operation. Using this,
# you can also add spaces in the expression.
let "RESULT = 5 * 5"  # 5 * 5 => 25
let "RESULT++"        # 25 + 1 => 26
echo $RESULT

# We can also use +=, -= , *=, /= and %= operators.
NUM=5 #5
let NUM-=2       # 5 - 2 => 3
let NUM*=2       # 3 * 2 => 6
let NUM/=3       # 6 / 3 => 2
let NUM+=1       # 2 + 1 => 3
let NUM%=2       # 3 % 2 => 1
echo $NUM

# Using expr command
# We can also use expr command to execute an expression which takes multiple arguments ( it concatenates them and executes it ).
# It does not have a problem like let to declare a variable but it will print the result by default
expr 1 + 1   # prints to the STDOUT
RESULT=$(expr 3 \* 3)
echo $RESULT

#Using double parentheses
#Using $((expression)) syntax, we can also perform arithmetic operations.
#We can put spaces between the expression which is valid.
RESULT=$((1 + 1))
echo $RESULT

# With this syntax, we can also use +=, -= , *=, /= and %= operators.
NUM=5 # 5
((NUM-=2)) # 5 - 2 => 3
(( NUM*=2 )) # 3 * 2 => 6
(( NUM /= 3 )) # 6 / 3 => 2  #=> easy to understand with spaces
((NUM += 1)) # 2 + 1 => 3
(( NUM%=2)) # 3 % 2 => 1
echo $NUM

# We can manipulate variables directly with this syntax.
NUM=5
(( NUM += NUM )) # 5 + 5 => 10
(( NUM++ )) # 6++ => 11
(( NUM = $NUM - 3)) # 11 - 3 => 8
echo $NUM









