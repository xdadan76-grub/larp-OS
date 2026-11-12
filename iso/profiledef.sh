#!/usr/bin/env bash

iso_name="larp"
iso_label="LARP_OS"
iso_publisher="larp.OS"
iso_application="larp.OS Live Environment"
iso_version="0.1.0"
install_dir="larp"

buildmodes=('iso')
bootmodes=('bios.syslinux' 'uefi.grub')

arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
file_permissions=()