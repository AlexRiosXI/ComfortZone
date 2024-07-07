#!/bin/bash
$user = $(whoami)
picom --config /home/$user/.conf/p.conf
killall -q polybar
while pgrep -u $UID -< polybar >/dev/null; do sleep 1; done
polybar alex &
nitrogen