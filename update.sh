cp -r i3 /home/kali/.config
cp -r rofi /home/kali/.config
cp -r polybar /home/kali/.config
cp -r kitty /home/kali/.config
cp .zshrc /home/kali/.zshrc -f
sudo cp -f lightdm/lightdm-gtk-greeter.conf /etc/lightdm
chown kali:kali /home/kali/.config -R
chown kali:kali /home/kali/.zshrc
echo Done
