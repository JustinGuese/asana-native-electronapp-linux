# Overview

I am not working for Asana, and this is just a basic electron app, meaning I am not responsible for lincensing, support and so on regarding the product and company Asana.

Installs Asana website as a "native" Ubuntu / Linux App (Unity Desktop). 
Using Electron and nativefier in the background. I created the app for Linux (x64) and added a install.sh file to create a Unity Desktop File that gets automatically copied to the applications folder. Works without adding it to the start menu as well.

# Install

1. Clone repo to home folder (or anywhere, but then you will need to edit the .desktop file) and cd into it

`git clone https://github.com/JustinGuese/asana-native-electronapp-linux.git && cd asana-native-electronapp-linux`

2. Make install.sh executable and autoinstall (or use manual install below)

`chmod +x install.sh && ./install.sh`

3. Find Asana in your Unity menu (normal application menu)


## Manual Install

There is an executable in the Asana-linux-x64 folder called Asana. You might need to run ´chmod +x Asana´ to make it work.

Just execute it manually, or copy it to your executable path, e.g. with ubuntu /usr/local/bin .

If you want to create a desktop icon for unity feel free to just run install.sh or follow the steps on creating a .desktop entry.

## Zip creation

to honor git max filesize

tar cvzf - Asana-linux-x64 | split --bytes=49MB - asana.tar.gz

untar
cat asana.tar.gz.* | tar xzvf -
