xrdb -merge ~/.Xresources

feh --bg-color "#1a1d1e" &

# Daemon mode: one urxvt process shared across all terminal windows (see i3 config, urxvtc)
urxvtd -q -o -f &

exec i3
