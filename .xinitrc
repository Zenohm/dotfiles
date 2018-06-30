#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Add in custom commands here
# Start the gnome-keyring-daemon
# NOTE: This should be automatically handled by PAM.
#eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
#export SSH_AUTH_SOCK

# Fix passwords
#source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
#exec xterm -geometry 80x66+0+0 -name login

#nitrogen --restore &
#export XDG_CURRENT_DESKTOP=Budgie:GNOME
#exec i3 

# Don't know why this is here, commenting for now.
#xhost +localhost &

#compton --backend glx --vsync drm --unredir-if-possible --paint-on-overlay -b

. $HOME/.sh.d/environment

#xrdb -load $HOME/.Xresources &
#xmodmap $HOME/.Xmodmap &
#xmodmap $HOME/.keymap
#compton &
#unclutter -idle 1 &
#pcmanfm -d &
#mpd $HOME/.config/mpd/mpd.conf &
#mpdcron &
numlockx &
dunst &
lxsession &
#urxvtd -q -f -o
#wmname LG3D &
#xsetroot -cursor_name left_ptr &
#xautolock -time 30 -locker i3lock-fancy
#       Daemon
#thunar --daemon
#       Pulseaudio
#start-pulseaudio-x11
#       Music server MPD
#mpd




session=${1:-kde}

case $session in
    awesome       ) exec awesome;;
    bspwm         ) exec bspwm;;
    catwm         ) exec catwm;;
    cinnamon      ) exec cinnamon-session;;
    dwm           ) exec dwm;;
    enlightenment ) exec enlightenment_start;;
    ede           ) exec startede;;
    evilwm        ) exec evilwm;;
    fluxbox       ) exec startfluxbox;;
    gnome         ) exec gnome-session;;
    gnome-classic ) exec gnome-session --session=gnome-classic;;
    i3            ) exec i3;;
    icewm         ) exec icewm-session;;
    jwm           ) exec jwm;;
    kde           ) exec startkde;;
    mate          ) exec mate-session;;
    monster       ) exec monsterwm;;
    notion        ) exec notion;;
    openbox       ) exec openbox;;
    #openbox       ) exec openbox-session;;
    lxde          ) exec startlxde;;
    swm           ) exec swm;;
    unity         ) exec unity;;
    xfce          ) exec startxfce4;;
    xmonad        ) exec xmonad;;
    # No known session, try to run it as command
    *) exec $1;;
esac

#xrandr --output eDP-1 --auto --pos 0x300 --output HDMI-1 --primary --auto --pos 1368x0
#       Background
#nitrogen --restore
