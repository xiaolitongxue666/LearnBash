#!/bin/bash
# enable `extglob` shell option
shopt -s extglob
# read what user's favourite planet
echo -n "Enter your favourite planet: "
read USER_PLANET
case "$USER_PLANET" in
  # match exactly `Earth`
  Earth)
    echo "Earth is where we live.";;
  # match exactly `Mars`
  Mars ) echo "Mars is where will go someday.";;
  # match anything
  * )
    echo "I am getting more information about this planet.";;
esac
#⥤ Enter your favourite planet: ⥢ Mars
#⥤ Mars is where will go someday.


