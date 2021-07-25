#!/bin/sh

status="$(playerctl --player=mpd status)"
artist="$(playerctl --player=mpd metadata artist)"
song="$(playerctl --player=mpd metadata title)"

output="$artist - $song"

case "$status" in
	
	Stopped)
	exit 0
	;; 
	
	Playing)
	output=" ${output}"
	;;

	Paused)
	output=" ${output}" 
	;;

esac

char="$(echo $output | wc -m)"
limit="60"

if [ "$char" -gt "$limit" ]; then
	output="$(echo $output | cut -c -50)"
	output="${output}..."
fi
        
echo " $output"
