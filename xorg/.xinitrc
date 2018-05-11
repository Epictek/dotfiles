#!/bin/bash
if [ -d /etc/X11/xinit/xinitrc.d ]; then
   for f in /etc/X11/xinit/xinitrc.d/?* ; do
         [ -x "$f" ] && . "$f"
    done
    unset f
fi

# Gif Wallpaper
~/.bin/gifbg.sh ~/dots/wallpaper/wall.gif &
feh --bg-center --no-xinerama wall.png &

# X Colouts
xrdb .Xresources & 

# US Keyboard Layout
setxkbmap us &

#Load custom user fonts
xset +fp /home/kieran/.fonts &
xset fp rehash &

#Load bars
polybar top &
polybar bottom &
polybar bottom-right &

# Compisitioning
compton &
flashfocus --flash-on-focus &

# Notifications
dunst &

# Disable monitor sleep
xset -dpms &
xset s 0 0 &

# Set cursor
xsetroot -cursor_name left_ptr &

# Set wm name for java compatibility 
wmname LG3D &

# Daemons
udiskie --tray &
pulseaudio -D &

# Flux for Linux
redshift -l 53.7:-0.3 &


# Bars
polybar main &
polybar second_monitor &

# Keybinds
sxhkd &

exec bspwm
