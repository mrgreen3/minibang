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
- [x] Boot-verified first ISO at 1.1GB
- [x] linux-firmware pinned to intel/atheros/realtek/broadcom sub-packages (~200MB vs ~400MB full set) — dropped nvidia (discrete GPU, rare on ~1GB-RAM-era laptops) and mediatek (mobile SoC, not laptop hardware)
- [x] Dropped grub/os-prober from the live ISO — install-time only (pacstrap onto the target instead of carrying in the live image)

## Near-term

- [ ] Re-boot-test in QEMU after the firmware/grub trim, confirm actual ISO size
- [ ] Wallpaper / branding assets (syslinux splash, Backgrounds/) for MiniBang identity

## Backlog / Ideas

- [ ] Install-to-disk flow (deliberately out of scope for the first bootable pass)
- [ ] Screenshot script polish (region select via a helper wrapping scrot)
- [ ] Accessibility options (font size, contrast)
