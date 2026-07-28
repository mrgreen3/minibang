# add vim as default editor
export EDITOR=vim
export TERMINAL=urxvt
export BROWSER=links

# Add scripts path safely
if [[ ":$PATH:" != *":$HOME/Scripts:"* ]]; then
    export PATH="$PATH:$HOME/Scripts"
fi

alias ls='ls --color=auto'

# Package sizes
alias pkg_size="pacman -Qi | awk '/^Name/{n=\$3} /^Installed Size/{print \$4\$5\"\t\"n}' | sort -hr"

# Pacman upgrades
alias update='sudo pacman -Syu'
alias updates='checkupdates'

# Works around a urxvt 9.31 regression where the prompt renders mid-window
# (blank space above it) when i3 tiles a new terminal to full height before
# urxvt's first redraw. A clear forces a proper repaint at startup.
# https://bbs.archlinux.org/viewtopic.php?id=282889
[[ "$TERM" == rxvt* ]] && clear

