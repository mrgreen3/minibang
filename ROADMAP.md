# ROADMAP

## Done

- [x] Reworked from ArchBang scaffold: Xorg + i3 stack (i3-wm, i3status, i3lock, rxvt-unicode, feh, dmenu)
- [x] Dropped Wayland/MangoWM/GTK stack, AUR repo, ABI installer
- [x] NetworkManager, controlled via nmtui (no dmenu-based network UI)
- [x] No display manager — autologin tty1 + `startx` via `.bash_profile`/`.xinitrc`
- [x] i3 config, i3status config, urxvt daemon mode (.Xresources)
- [x] Branding pass on os-release, profiledef.sh, FUNDING.yml
- [x] Dropped gparted (pulled in the full GTK3 stack) — parted/gptfdisk/cfdisk cover partitioning
- [x] lf over ranger for the file-manager fallback — static binary, no Python interpreter to spin up

## Near-term

- [ ] Boot-test in QEMU: confirm i3 + urxvt + dmenu + nmtui all work end to end
- [ ] Trim packages.x86_64 further against actual installed footprint (~1GB RAM target)
- [ ] Wallpaper / branding assets (syslinux splash, Backgrounds/) for MiniBang identity

## Backlog / Ideas

- [ ] Install-to-disk flow (deliberately out of scope for the first bootable pass)
- [ ] Screenshot script polish (region select via a helper wrapping scrot)
- [ ] Accessibility options (font size, contrast)
