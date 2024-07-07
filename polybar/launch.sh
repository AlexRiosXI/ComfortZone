#!/bin/bash
picom --config /home/alex/Documentos/p.conf
killall -q polybar
while pgrep -u $UID -< polybar >/dev/null; do sleep 1; done
polybar alex &

