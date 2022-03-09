#!/bin/bash
# uses nativefier (npm install -g nativefier)
nativefier --name "Asana" app.asana.com
tar cvzf - Asana-linux-x64 | split --bytes=49MB - asana.tar.gz
rm -rf Asana-linux-x64