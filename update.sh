cp -r i3 /home/kali/.config
cp -r rofi /home/kali/.config
cp -r polybar /home/kali/.config
cp -r kitty /home/kali/.config
cp .zshrc /home/kali/.zshrc -f
chown kali:kali /home/kali/.config -R
chown kali:kali /home/kali/.zshrc
echo Done
