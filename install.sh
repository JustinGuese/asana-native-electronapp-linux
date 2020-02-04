#!/bin/bash
# unpack files
tar -zxvf files.tar.gz
# permissions (might not work if not sudo)
chmod +x Asana
chmod +x asana.desktop
# create desktop entry
# edit $HOME if install folder is somewhere else
echo "[Desktop Entry]
Comment=Asana created with nativefier
Terminal=false
Name=Asana
Exec=$HOME/Asana-linux-x64/Asana
Type=Application
Icon=$HOME/Asana-linux-x64/resources/app/icon.png
Categories=Office;ProjectManagement;" > "asana.desktop"
# copy desktop file to applications
cp asana.desktop $HOME/.local/share/applications
echo "Sucessfully installed Asana. Type Asana into your menu to launch"
