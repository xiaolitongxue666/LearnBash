#!/bin/bash
function hi_me(){
    echo "Hello `whoami`"
}

hi_me # calling function `hi_me` with no arguments

# A function executes in the same session of the script
# but its body has a separate scope for the positional parameters.
# Hence positional parameters inside function body
# do not interfere with the outer scope.

function show_fruits(){
    echo "Local Args: \$1:$1 | \$2:$2"
}
show_fruits Apple Oranges
echo "Global Args: \$1:$1 | \$2:$2"
#-------------------------------
#~$ bash fruits.sh Mangos Grapes
#⥤ Local Args: $1:Apple | $2:Oranges
#⥤ Global Args: $1:Mangos | $2:Grapes

# However, the variables defined outside the scope are accessible inside the function.
# Also, if we declare a variable inside the function, it will be written to the global scope.
# To avoid that, we use local command.
# This way, we can prevent variables defined inside a function body to be written in the global scope.
FIRST_NAME='John'
LAST_NAME='Doe'
function say_hello() {
    FIRST_NAME=$1        # global scope
    local LAST_NAME=$2   # local scope
    echo "Hello, $FIRST_NAME $LAST_NAME"
}
echo "Before: FIRST_NAME: $FIRST_NAME, LAST_NAME: $LAST_NAME"
say_hello Ross Geller
echo "After: FIRST_NAME: $FIRST_NAME, LAST_NAME: $LAST_NAME"
#⥤ Before: FIRST_NAME: John, LAST_NAME: Doe
#⥤ Hello, Ross Geller
#⥤ After: FIRST_NAME: Ross, LAST_NAME: Doe

# A function can also return a value.
# The return value is more like an exit status code we have seen with some commands before.
# Hence we need to access the returned value of a function using $? syntax.
get_random(){
    END=$1 # fist argument represents end digit
    # if $END is not empty
    # return number between `0` and `$END`
    if [ -n "$END" ]; then
        echo 'get_random() / context: if-block'
        return $(( $RANDOM % ( $END + 1 ) ))
    fi
    # if `END` is not provided, return $RANDOM
    echo 'get_random() / context: body'
    return $RANDOM
}
# call function
get_random
echo "get_random:" $?
# call function with 10 as argument
get_random 10
echo "get_random 10:" $?
#⥤ get_random() / context: body
#⥤ get_random: 243
#⥤ get_random() / context: if-block
#⥤ get_random 10: 9

# Hence, we should try to avoid function with return
# values and use return values to provide custom status codes.
# Since we can capture STDOUT of a command $() or `` syntax,
# we can use the same principles with function and just echo the
# return value so that invoker can capture it easily.
get_random(){
    END=$1

    if [ -n "$END" ]; then
        echo $(( $RANDOM % ( $END + 1 ) ))
    else
        echo $RANDOM
    fi
}
echo "get_random: $( get_random )"      # using $()
echo "get_random 10: `get_random 10`"   # using ``
