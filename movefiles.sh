#!/bin/bash 

dirvar=1
while true; do
	mkdir $dirvar
	top20=$(ls -F | grep -v / | head -n 20)
	sudo mv $top20 $dirvar
	dirvar=$((dirvar+1))



done
