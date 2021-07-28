#!/bin/sh
day="$(date +%d)"

if [ "$day" = "1" ] || [ "$day" = "21" ] || [ "$day" = "31" ]; then
	echo " "$(date "+%a %dst %b, %H:%M")
	
elif [ "$day" = "2" ] || [ "$day" = "22" ]; then
	echo " "$(date "+%a %dnd %b, %H:%M")

elif [ "$day" = "3" ] || [ "$day" = "23" ]; then
	echo " "$(date "+%a %drd %b, %H:%M")

else 
	echo " "$(date "+%a %dth %b, %H:%M")

fi
