#!/bin/bash 
#so recently i was trying to group a bunch of files into groups of twenty with directories
#so this would to directory 1,2,3... with 20 files in each one.
dirvar=1
while true; do
	mkdir $dirvar
	top20=$(ls -F | grep -v / | head -n 20)
	sudo mv $top20 $dirvar
	dirvar=$((dirvar+1))



done
