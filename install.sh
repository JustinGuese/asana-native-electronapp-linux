#!/bin/bash
# unpack files
# tar -zxvf asana.tar.gz
cat asana.tar* | tar xzvf -
# permissions (might not work if not sudo)
cp -r Asana-linux-x64 $HOME/
cd $HOME/Asana-linux-x64/
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
cp ./asana.desktop $HOME/.local/share/applications
echo "Sucessfully installed Asana. Type Asana into your menu to launch"
