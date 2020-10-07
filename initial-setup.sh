#!/usr/bin/env bash

# curl -L "https://raw.githubusercontent.com/smart-home-oss/raspberry-setup/master/initial-setup.sh" | bash -

mkdir ~/shoss
git clone https://github.com/smart-home-oss/raspberry-setup.git ~/shoss/raspberry-setup

git pull;
ALIAS_FILE=~/.bash_aliases_shoss

addAlias() {
  echo "$1" >> $ALIAS_FILE
}

rm $ALIAS_FILE
touch $ALIAS_FILE

# https://www.raspberrypi.org/forums/viewtopic.php?t=34994
addAlias "alias temp='/opt/vc/bin/vcgencmd measure_temp'"
addAlias "alias tempf='watch \"/opt/vc/bin/vcgencmd measure_temp\"'"


addAlias "alias ll='ls -alF'"
addAlias "alias la='ls -A'"
addAlias "alias l='ls -CF'"
addAlias "alias shut='sudo shutdown 0'"
addAlias "alias py='python'"
addAlias "alias py3='python3'"

cd ~ || exit 1
source .bash_aliases_shoss
cd - || exit 1

# WiringPi is a PIN based GPIO access library written in C
# for the BCM2835, BCM2836 and BCM2837 SoC devices
# used in all Raspberry Pi
wget https://project-downloads.drogon.net/wiringpi-latest.deb
sudo dpkg -i wiringpi-latest.deb

echo "Done, please exit this shell session and open a new one for the changes to become effective."
