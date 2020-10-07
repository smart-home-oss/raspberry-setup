#!/usr/bin/env bash

# curl -L "https://raw.githubusercontent.com/smart-home-oss/raspberry-setup/master/initial-setup.sh" | bash -

mkdir ~/shoss
git clone https://github.com/smart-home-oss/raspberry-setup.git ~/shoss/raspberry-setup
cd ~/shoss/raspberry-setup || exit 1
git pull
cd - || exit 1

# https://www.raspberrypi.org/documentation/linux/usage/bashrc.md
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
addAlias "alias shoss='cat ~/.bash_aliases_shoss'"

cd ~ || exit 1
source .bash_aliases_shoss
cd - || exit 1

# WiringPi is a PIN based GPIO access library written in C
# for the BCM2835, BCM2836 and BCM2837 SoC devices
# used in all Raspberry Pi
rm wiringpi-latest.deb
wget https://project-downloads.drogon.net/wiringpi-latest.deb
sudo dpkg -i wiringpi-latest.deb

# https://github.com/pybluez/pybluez
sudo apt-get update
sudo apt-get install bluetooth bluez libbluetooth-dev -y
sudo python3 -m pip install pybluez

echo "Done. Now you'll have a bunch of aliases as shortcuts for popular commands."
echo "Type to test: shoss."
