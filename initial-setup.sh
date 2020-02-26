#!/usr/bin/env bash

# https://www.raspberrypi.org/forums/viewtopic.php?t=34994
# shellcheck disable=SC2129
echo "alias temp='/opt/vc/bin/vcgencmd measure_temp'" >> ~/.bash_aliases;
echo "alias tempf='watch \"/opt/vc/bin/vcgencmd measure_temp\"'" >> ~/.bash_aliases;

echo "alias ll='ls -alF'" >> ~/.bash_aliases;
echo "alias la='ls -A'" >> ~/.bash_aliases;
echo "alias l='ls -CF'" >> ~/.bash_aliases;

source .bash_aliases

mkdir ~/IdeaProjects

git clone https://github.com/smart-home-oss/raspberry-setup.git ~IdeaProjects/raspberry-setup