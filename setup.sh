start_dir=$(echo $PWD)
echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
apt update -y
cd /opt
git clone https://github.com/maestrogerardo/i3-gaps-deb.git
cd i3-gaps-deb 
./i3-gaps-deb
cd /opt
git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
cd polybar-themes
chmod +x setup.sh
echo 1 | ./setup.sh
apt install compton ranger polybar rofi calc feh imagemagick neofetch
cd $start_dir
cp -r i3 /home/kali/.config
cp -r rofi /home/kali/.config
cp -r polybar /home/kali/.config
timedatectl set-timezone Europe/London
echo "=== Now restart to run i3 ==="
