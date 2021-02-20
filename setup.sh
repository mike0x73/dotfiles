$start_dir = echo $PWD
echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
apt update -y
cd /opt
git clone https://github.com/maestrogerardo/i3-gaps-deb.git
cd i3-gaps-deb 
./i3-gaps-deb
apt install compton ranger polybar
mkdir ~/.config/i3
cd $start_dir
cp ./i3/config ~/.config/i3/config
echo "=== Now restart to run i3 ==="
