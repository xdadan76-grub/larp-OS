#!/bin/bash
set -e

# Enable graphical desktop
systemctl set-default graphical.target

# Enable KDE login screen
systemctl enable sddm.service

# Enable network
systemctl enable NetworkManager.service

# Enable Flathub
systemctl enable flatpak-flathub.service