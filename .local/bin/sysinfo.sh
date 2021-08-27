#!/bin/sh
username="$(whoami)"
hostname="$(hostnamectl hostname)"
os="$(hostnamectl | grep Operating | sed 's/Operating System: //g')"
kernel="$(uname -r)"
uptime="$(uptime -p | sed 's/up //g')"
packages="$(pacman -Qq | wc -l)"
divider="$()"

for n in $(seq $(echo "$username"@"$hostname" | wc -m)); do
	divider="-${divider}"
done

echo "$username"@"$hostname"
echo $divider
echo OS: "$os"
echo Kernel: "$kernel"
echo Uptime: "$uptime"
echo Shell: "$SHELL"
echo Packages: "$packages"
echo "$divider"
