#!/usr/bin/env bash

# curl -L "https://raw.githubusercontent.com/smart-home-oss/raspberry-setup/master/initial-setup.sh" | bash -

if [ ! -f "$HOME/.bash_aliases" ]; then
    touch ~/.bash_aliases;
fi

# https://www.raspberrypi.org/forums/viewtopic.php?t=34994
# shellcheck disable=SC2129
echo "alias temp='/opt/vc/bin/vcgencmd measure_temp'" >> ~/.bash_aliases;
echo "alias tempf='watch \"/opt/vc/bin/vcgencmd measure_temp\"'" >> ~/.bash_aliases;

echo "alias ll='ls -alF'" >> ~/.bash_aliases;
echo "alias la='ls -A'" >> ~/.bash_aliases;
echo "alias l='ls -CF'" >> ~/.bash_aliases;
echo "alias shut='sudo shutdown 0'" >> ~/.bash_aliases;
echo "alias py='python'" >> ~/.bash_aliases;
echo "alias py3='python3'" >> ~/.bash_aliases;

cd ~ || exit 1
source .bash_aliases
cd - || exit 1

wget https://project-downloads.drogon.net/wiringpi-latest.deb
sudo dpkg -i wiringpi-latest.deb

mkdir ~/IdeaProjects
git clone https://github.com/smart-home-oss/raspberry-setup.git ~/IdeaProjects/raspberry-setup

echo "Done, please exit this shell session and open a new one for the changes to become effective."