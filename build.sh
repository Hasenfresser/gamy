#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

mkdir -p /run/media/hasenfresser/Linux-Games /run/media/hasenfresser/Linux-Games-HDD

#cat /root/games_hdd | cryptsetup open --type bitlk /dev/disk/by-uuid/af768f9e-b984-4185-8684-75e41a3daeeb games_hdd
#cryptsetup open --key-file=/root/games_m2 /dev/disk/by-uuid/bfc2b949-6458-47e6-a9c3-9d7d7e812522 games_m2

#mount -o defaults /dev/mapper/games_hdd /run/media/hasenfresser/Linux-Games-HDD
#mount -o defaults,noatime /dev/mapper/games_m2 /run/media/hasenfresser/Linux-Games

# this installs a package from fedora repos
dnf5 install -y tmux fastfetch neovim htop 

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket
