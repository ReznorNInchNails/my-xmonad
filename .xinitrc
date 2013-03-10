#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

#if [ -d /etc/X11/xinit/xinitrc.d ]; then
#  for f in /etc/X11/xinit/xinitrc.d/*; do
#    [ -x "$f" ] && . "$f"
#  done
#  unset f
#fi
feh --bg-scale /home/dino/Japanese*.jpg
# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice

xrdb -merge ~/.Xdefaults
#exec --no-startup-id nm-applet
#exec --no-startup-id volwheel
#exec dbus-launch i3

#conky | dzen2 -x '500' -e '' -fg '#dcdcdc' -bg '#3f3f3f' \-w '650' -ta r -fn '-*-terminus-*-r-normal-*-*-120-*-*-*-*-iso8859-*' -p ) &amp;
if [ -x /usr/bin/nm-applet ] ; then
   nm-applet --sm-disable &
fi
#conky | while read -r; do xsetroot -name "$REPLY"; done &
#conky | dzen2 -fg '#dcdcdc' -bg '#3f3f3f' -ta r -fn '-*-terminus-*-r-normal-*-*-120-*-*-*-*-iso8859-*' &
#exec dzen2 &
#~/.dwm-statusbar.bash &
#exec dbus-launch /usr/local/bin/dwm
exec dbus-launch xmonad
