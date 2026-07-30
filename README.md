# MiniBang

A minimal Arch Linux-based setup for older laptops with very low RAM (~1GB), where a modern Arch install with Wayland and a full desktop environment isn't practical.

Built entirely with pacman and official Arch repositories — no separate distro, no alternate package manager.

## Stack

- **Xorg** (not Wayland) — lower overhead, no compositor tax
- **i3** — tiling window manager, ships with `i3bar` + `i3blocks` built in (no separate panel needed)
- **rxvt-unicode (urxvt)** — lightweight terminal, supports daemon mode to share one process across windows
- **feh** — wallpaper setting
- **dmenu** — app launcher, no GTK/Qt dependencies
- **xorg-drivers** group — pulls in the full `xf86-video-*` / `xf86-input-*` set so pacman can match whatever GPU/input hardware is present, without needing to identify it up front

GTK dependencies are avoided where possible throughout the stack. No GUI browser or GUI file manager is shipped by default — both are too heavy for the RAM budget on this class of hardware. Terminal-based alternatives (e.g. `lf` for files, `links` for text browsing) are the fallback if needed.

## Install

```sh
pacman -S xorg-server xorg-xinit xorg-drivers i3 feh rxvt-unicode dmenu
```

Then set up `~/.xinitrc`:

```sh
xrdb -merge ~/.Xresources
feh --bg-scale /path/to/wallpaper.jpg &
exec i3
```

Start with `startx` from a TTY — no display manager, to keep background processes minimal.

## Why not archlinux32?

Even on very old hardware, most laptops from the last ~15 years are 64-bit capable despite having tiny RAM. archlinux32 is a volunteer-maintained fork for genuinely 32-bit-only systems, but it trails mainline in package freshness — worth using only if the CPU is confirmed 32-bit only.

## Kernel

No custom kernel — uses standard Arch `linux` or `linux-lts` packages. The two are within ~3MB of each other installed, so the real RAM savings come from the userspace stack above, not the kernel choice.

## Installing to disk

Boot the live ISO and run:

```sh
sudo mbinstall
```

`mbinstall` (in `~/Scripts/`) handles partitioning, pacstrap, and MiniBang branding/config on the target disk. The manual `pacman -S` steps above are for setting up the stack on an existing install, not for the live-ISO install path.

## Status

Early setup / work in progress.
