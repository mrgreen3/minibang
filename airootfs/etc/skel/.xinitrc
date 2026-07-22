xrdb -merge ~/.Xresources

feh --bg-scale ~/Backgrounds/sunset-lake.png &

# Daemon mode: one urxvt process shared across all terminal windows (see i3 config, urxvtc)
urxvtd -q -o -f &

exec i3
