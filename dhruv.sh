#bin/bash
sudo apt-get install cowsay -y
cowsay -f dragon "run for cover, I am a dragon..." >> dragon.txt
cat dragon.txt
ls -lrth