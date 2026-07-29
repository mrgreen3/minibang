# ROADMAP

## Done

- [x] Reworked from ArchBang scaffold: Xorg + i3 stack (i3-wm, i3status, i3lock, rxvt-unicode, feh, dmenu)
- [x] Dropped Wayland/MangoWM/GTK stack, AUR repo
- [x] Install-to-disk: reworked ArchBang's abinstall into `mbinstall` — i3/Xorg keyboard config via `localectl set-x11-keymap` (was mango-specific), gparted removed, full MiniBang branding
- [x] NetworkManager, controlled via nmtui (no dmenu-based network UI)
- [x] No display manager — autologin tty1 + `startx` via `.bash_profile`/`.xinitrc`
- [x] i3 config, i3status config, urxvt (.Xresources)
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

- [ ] Screenshot script polish (region select via a helper wrapping scrot)
- [ ] Accessibility options (font size, contrast)
- [ ] EROFS instead of squashfs for the airootfs image — typically better compression ratio and faster decompression (`airootfs_image_type="erofs"` in profiledef.sh)
- [ ] zram sizing: consider `ram` (full 1GB) instead of `ram / 2` on very low-RAM targets
- [ ] i3status: add `disk_usage` and `load` modules for low-RAM hardware monitoring
- [ ] reflector for automatic mirror selection in mbinstall, instead of the manual country/sed approach
