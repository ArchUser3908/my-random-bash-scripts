#!/bin/bash
#i am currently using JaKooLit's Arch-Hyprland setup, and the pokemon git colorscript was really cool
#so this is what i came up with, to just go through a couple of options
#have pokemon-colorscripts installed
#i saw the yt video from Astroid Videos on YT, nameing as many pokemon as you can in like a minute, or whatever
#that was too hard for me, i just make it go through 30 of them.
#comp1 is only for gen1 pokemone, comp1-9 is all gens so far


echo "big or smol or comp1 or comp1-9 (big/smol/comp1/comp1-9)"

read var
if [[ "$var" == "big" ]]; then 
	while true; do
		pokemon-colorscripts -r -s -b --no-title
		sleep 2
		clear
	done
fi
if [[ "$var" == "smol" ]]; then
	while true; do
		pokemon-colorscripts -r -s --no-title
		sleep 2
		clear
	done
fi
if [[ "$var" == "comp1" ]]; then
	for i in {1..30}; do
		pokemon-colorscripts --random 1 -b --no-title
		sleep 1 
		clear
	done
fi
if [[ "$var" == "comp1-9" ]]; then
	for i in {1..30}; do
		pokemon-colorscripts -r -b --no-title
		sleep 1
		clear
	done
fi
