# MiniBang login shell configuration
# Starts Xorg + i3 on TTY1 via startx (no display manager)

. $HOME/.bashrc

if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx
fi



