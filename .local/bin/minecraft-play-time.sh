#!/bin/sh
char="$(expr $(cat ~/.local/share/multimc/instances/*/instance.cfg | grep totalTimePlayed | tr "\n" "+" | sed 's/totalTimePlayed=//g' | sed 's/+/ + /g' | wc -m) - 2)"
hours="$(expr $(expr $(cat ~/.local/share/multimc/instances/*/instance.cfg | grep totalTimePlayed | tr "\n" "+" | sed 's/totalTimePlayed=//g' | sed 's/+/ + /g' | cut -c -$char)) / 3600)"
echo $hours hours
