#!/bin/bash
set -e

# Create the larp user
useradd -m -G wheel -s /bin/bash larp

# Configure KDE automatic login
mkdir -p /etc/sddm.conf.d

cat > /etc/sddm.conf.d/autologin.conf << 'EOF'
[Autologin]
User=larp
Session=plasma
Relogin=false
EOF

# Start graphical desktop
systemctl set-default graphical.target
systemctl enable sddm.service

# Enable network
systemctl enable NetworkManager.service

# Enable Flathub
systemctl enable flatpak-flathub.service