#!/bin/bash
#so recently, i wanted to stop using a folder gui to click on my music files and play them
#this uses vlc, so have it installed

echo "do you have a specific song you want to play, will be random if no (y/n)"
read yn
if [[ $yn == "y" ]]; then
    echo "how many songs do you want to play?"
    read songnum
	    echo "enter songname"
	    read songname
	    song=$(ls ~/Music | grep -i "$songname" | head -n 1)
	    echo "$song"
	    sleep 2
	    cvlc file:///home/arch/Downloads/sounds/"$song"
fi

if [[ $yn == "n" ]]; then
	echo "picking random song"
	randsong=$(ls ~/Music | shuf -n 1)
	echo "$randsong"
	sleep 2
	cvlc file:///~/Music/"$randsong"
fi
