start_dir=$(echo $PWD)
sudo echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
sudo apt update -y; apt upgrade -y; apt autoremove -y; apt dist-upgrade -y
cp -f lightdm/lightdm-gtk-greeter.conf /etc/lightdm
apt install compton ranger polybar rofi calc feh imagemagick neofetch kitty alacarte python2 gdb -y
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -q -o- | sudo python2
pip2 install setuptools 
pip2 install --upgrade setuptools
pip2 install pwntools
apt install python3 python3-pip # Must be installed after pip2
pip3 install keystone-engine unicorn capstone ropper pwntools
wget -q -O- https://github.com/hugsy/gef/raw/master/scripts/gef.sh | bash
cd /opt
git clone https://github.com/maestrogerardo/i3-gaps-deb.git
cd i3-gaps-deb 
echo "\n\n\n\n\n\n\n\n\n\n\n\n\n" | ./i3-gaps-deb
cd /opt
git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
cd polybar-themes
chmod +x setup.sh
su - kali -c "cd /opt/polybar-themes; echo 1 | /opt/polybar-themes/setup.sh; exit"
cd $start_dir
cp -r i3 /home/kali/.config
cp -r rofi /home/kali/.config
cp -r polybar /home/kali/.config
cp -r kitty /home/kali/.config
cp -r Wallpapers /home/kali/Pictures
cp .zshrc /home/kali/.zshrc -f
chown kali:kali /home/kali/.config -R
chown kali:kali /home/kali/.zshrc
timedatectl set-timezone Europe/London
echo "=== Now restart to run i3 ==="
