#!/bin/sh
day="$(date +%d)"

if [ "$day" = "01" ] || [ "$day" = "21" ] || [ "$day" = "31" ]; then
	echo " "$(date "+%a %est %b, %H:%M")
	
elif [ "$day" = "02" ] || [ "$day" = "22" ]; then
	echo " "$(date "+%a %end %b, %H:%M")

elif [ "$day" = "03" ] || [ "$day" = "23" ]; then
	echo " "$(date "+%a %erd %b, %H:%M")

else 
	echo " "$(date "+%a %eth %b, %H:%M")
fi
