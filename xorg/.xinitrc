#!/bin/bash
if [ -d /etc/X11/xinit/xinitrc.d ]; then
   for f in /etc/X11/xinit/xinitrc.d/?* ; do
         [ -x "$f" ] && . "$f"
    done
    unset f
fi

xrdb .Xresources & 
setxkbmap us &
xset +fp /home/kieran/.fonts &
xset fp rehash &
~/gifbg.sh wall.gif &
sxhkd &
compton &
dunst &
polybar top &
polybar bottom &
polybar bottom-right &
xsetroot -cursor_name left_ptr &
wmname LG3D &
udiskie --tray &
pulseaudio -D &
mpd &
[[ -z $(pgrep -xU $UID mpdscribble) ]] && mpdscribble &
#exec bspwm
