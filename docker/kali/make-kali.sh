#!/bin/sh

if ! grep -q "alias kali-start" $HOME/.zshrc;
	then echo 'alias kali-start="docker start -ai kali"' >> $HOME/.zshrc && echo 'alias kali="docker exec -it kali /bin/sh -c \"bash\""' >> $HOME/.zshrc;
fi

docker build . -t kali
docker run --name kali -v $HOME/hacking:/hacking -it kali:latest "/bin/bash"
