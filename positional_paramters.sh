#!/bin/bash
# loop around arguments string
for ARG in "$*"; do
    echo "ARGS ITEM 01: $ARG"
done
# loop around arguments vector
for ARG in "$@"; do
    echo "ARGV ITEM 02: $ARG"
done
#-------------------------------
#~$ bash fruits.sh Apples Mangoes Bananas
#⥤ ARGS ITEM: Apples Mangoes Bananas
#⥤ ARGV ITEM: Apples
#⥤ ARGV ITEM: Mangoes
#⥤ ARGV ITEM: Bananas
