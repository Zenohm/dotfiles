#!/bin/sh

killall polybar
#polybar example -c ~/.config/polybar/config_example &
polybar top -c ~/.config/polybar/polybar_space &
polybar bottom -c ~/.config/polybar/polybar_space &
#polybar bar1 -c ~/.config/polybar/.polybar &
#polybar bar2 -c ~/.config/polybar/.polybar &
#polybar topbar1 -c ~/.config/polybar/.polybar &
#polybar topbar2 -c ~/.config/polybar/.polybar &
