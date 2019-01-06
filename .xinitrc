~/.fehbg &
compton -b &
conky &
dunst &
unclutter &
lxsession &

# Fuck Pulseaudio. Seriously.
restore_alsa() {
 while [ -z "$(pidof pulseaudio)" ]; do
  sleep 0.5
 done
 alsactl -f /var/lib/alsa/asound.state restore 
}
restore_alsa &

# exec i3
exec gnome-session
