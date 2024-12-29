#!/bin/bash

cd "$(dirname "$0")" || exit

cat <<EOF | tee /home/$(whoami)/.local/share/william/william.desktop >/dev/null
[Desktop Entry]
Name=william
GenericName=AltServer for Linux
Path=/usr/lib/william
Exec=/usr/lib/william/william
Terminal=false
Type=Application
X-GNOME-Autostart-enabled=true
EOF

cp /home/$(whoami)/.local/share/william/william.desktop /home/$(whoami)/.config/autostart/
rm /home/$(whoami)/.local/share/william/william.desktop
