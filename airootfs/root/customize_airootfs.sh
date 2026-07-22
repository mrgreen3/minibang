#!/usr/bin/env bash
# Configure live iso
# 
set -e -u -x
shopt -s extglob

# Set locales
[[ -f /etc/locale.gen ]] && sed -i 's/#\(en_US\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

# Allow Parallel Downloads in pacman
[[ -f /etc/pacman.conf ]] && sed -i "s/^#Parallel/Parallel/" /etc/pacman.conf

# Un-comment mirrorlist to allow pacman to work live....
[[ -f /etc/pacman.d/mirrorlist ]] && sed -i "s/#Server/Server/g" /etc/pacman.d/mirrorlist

# Sudo to allow no password
sed -i 's/# %wheel ALL=(ALL:ALL) NOPASSWD: ALL/%wheel ALL=(ALL:ALL) NOPASSWD: ALL/g' /etc/sudoers
chown -c root:root /etc/sudoers
chmod -c 0440 /etc/sudoers

# Hostname (hardcoded for live ISO; users can change after installation)
echo "minibang" > /etc/hostname

# Vconsole
echo "KEYMAP=us" > /etc/vconsole.conf
echo "FONT=Lat2-Terminus16" >> /etc/vconsole.conf

# Locale
echo "LANG=en_US.UTF-8" > /etc/locale.conf
echo "LC_COLLATE=C" >> /etc/locale.conf

# Set clock to UTC
hwclock --systohc --utc

# Timezone
ln -sf /usr/share/zoneinfo/America/Montreal /etc/localtime

# Add live user
useradd -m -p "" -G "wheel" -s /bin/bash -g users live
chown live /home/live

# Start required systemd services
systemctl enable {pacman-init,NetworkManager}.service -f

# No display manager — live user starts X with `startx` from the tty1
# autologin shell (see .bash_profile). Default target stays multi-user.target.
