#!/bin/sh

echo 'alias kali-start="docker start -ai kali"' >> $HOME/.zshrc
echo 'alias kali="docker exec -it kali /bin/sh -c \"bash\""' >> $HOME/.zshrc

docker build . -t kali
docker run --name kali -v $HOME/hacking:/root/hacking -it kali:latest "/bin/bash"
