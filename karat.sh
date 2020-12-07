#!/bin/bash
# karat.sh
#
# Author: Arlo Gittings
# Created: 2020-12-05
# Purpose: 
#   A script to simplify and expedite building schemes for dir_colors
#   this will print out the variables in the current color scheme. If no scheme
#   it will create a default from the dircolor db.
#
function get_color (){
	local -n result=$1 
	read -p "Input a color hexmap (RR:GG:BB) q to quit: "  result
}

function split_color (){
	local RGB=$1
	local c=$2
	local val=$(echo "obase=10; ibase=16; `echo ${RGB^^}|cut -d: -f${c}`" | bc)
	echo ${val}
}

get_color RGB
while [ $RGB != 'q' ]; do
	red=$(split_color $RGB 1)
	green=$(split_color $RGB 2)
	blue=$(split_color $RGB 3)

	echo $red $green $blue
	echo -e "[38;2;${red};${green};${blue}mTESTING[0m"
	get_color RGB
done
