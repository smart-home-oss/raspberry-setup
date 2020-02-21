# OS Install

## Linux

1. Open a partition manager
    1. KDE Partition Manager
    1. GParted
    1. Any other.
1. Format MicroSD card to `ms-dos`
1. Create new file system of type `fat32`
1. Apply changes
1. Download NOOBS _Offline and network install_: https://www.raspberrypi.org/downloads/noobs/
    1. This can take a while
    1. Torrent file works faster
1. Extract the content into a folder
1. Copy all the files onto MicroSD card
1. Insert the card into Raspberry Pi
1. Turn on the Raspberry Pi
1. A rainbow-colored boot screen will appear
1. __*Optional__ Connect to Wi-Fi or Ethernet, this will help later 
1. Install Raspbian with all the software
    1. The first option
1. When done, click the button to restart
1. At first boot use the configuration window to setup basic things
1. __*Important__ Set the password when prompted, is just easier
1. __*Important__ Do the updates
1. Restart when prompted
1. Open Raspberry icon, top left, 
1. Goto `Preferences / Configuration`
1. Open tab `Interfaces`
1. Activate `SSH, VNC`
1. __*Optional__ Activate `Camera`
1. Restart when prompted
1. Open terminal and run:
    1. `git clone git@github.com:smart-home-oss/raspberry-setup.git`
    1. `cd raspberry-setup`
    1. `bash initial-setup.sh`