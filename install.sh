#!/bin/sh
bash apt_sources.txt
sudo apt update -y
sudo apt upgrade -y

while IFS="" read -r p || [ -n "$p" ]
do
  sudo apt install -y "$p"
done < apt_packages.txt

while IFS="" read -r p || [ -n "$p" ]
do
  sudo pip install "$p"
done < pip_installs.txt

bash custom_installs.txt

cp -r configs/* ~/.config
mkdir ~/shares
sudo cp -f backgrounds/* /usr/share/backgrounds

sudo cp -r applications/* /usr/share/applications

echo "Reboot to enable i3"
