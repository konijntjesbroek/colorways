#!/bin/bash
# colorways.sh
#
# Author: Arlo Gittings
# Created: 2020-12-05
# Purpose: 
#   A script to simplify and expedite building schemes for dir_colors
#   this will print out the variables in the current color scheme. If no scheme
#   it will create a default from the dircolor db.
#


echo -n "Input a color hexmap (RR:GG:BB): "
read RGB
red=$(echo "obase=10; ibase=16;`echo ${RGB^^}|cut -d: -f1`" | bc)
green=$(echo "obase=10; ibase=16;`echo ${RGB^^}|cut -d: -f2`" | bc)
blue=$(echo "obase=10; ibase=16;`echo ${RGB^^}|cut -d: -f3`" | bc)
echo $red $green $blue

echo -e "[38;2;${red};${green};${blue}mTESTING[0m"
