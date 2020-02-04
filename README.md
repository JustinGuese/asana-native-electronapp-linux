# Overview

Installs Asana as a "native" Ubuntu / Linux App (Unity Desktop). 
Using Electron and nativefier in the background. I created the app for Linux (x64) and added a install.sh file to create a Unity Desktop File that gets automatically copied to the applications folder. Works without adding it to the start menu as well.

# Install

1. Clone repo to home folder (or anywhere, but then you will need to edit the .desktop file) and cd into it

`git clone https://github.com/JustinGuese/asana-native-electronapp-linux.git && cd asana-native-electronapp-linux`

2. Make install.sh executable and autoinstall (or use manual install below)

`chmod +x install.sh && ./install.sh`

3. Find Asana in your Unity menu (normal application menu)


## Manual Install

Basically the script install.sh just executed individually

<code>
#!/bin/bash
# unpack files
tar -zxvf files.tar.gz
  </code>
  
  
  <code>
# permissions (might not work if not sudo)
chmod +x Asana
chmod +x asana.desktop
</code>


<code>
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
</code>

<code>
# copy desktop file to applications
cp asana.desktop $HOME/.local/share/applications
echo "Sucessfully installed Asana. Type Asana into your menu to launch"
</code>

