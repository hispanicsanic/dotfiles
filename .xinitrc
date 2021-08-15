cd ~

#clears old screenshots
rm -rf ~/.cache/screenshots/*

#autostart
mpd &
mpDris2 &
sxhkd &
unclutter &
xwallpaper --no-randr --zoom ~/.config/pape.png
lxsession &
dwmblocks &

#autoselects display
display="$(xrandr -q | grep " connected" | grep "HDMI1" | awk '{print $1}')"
if [ "$display" = "HDMI1" ]; then
        xrandr --output HDMI1 --auto --output eDP1 --off
fi

exec dwm
