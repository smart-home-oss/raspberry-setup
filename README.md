# raspberry-setup

https://www.raspberrypi.org/documentation/configuration/wireless/wireless-cli.md

bluetooth
https://stackoverflow.com/questions/30386577/c-c-ble-read-write-example-with-bluez
https://git.kernel.org/pub/scm/bluetooth/bluez.git/tree/doc
https://github.com/oscaracena/pygattlib

    sudo apt -y install libbluetooth-dev bluez bluez-hcidump libboost-python-dev libboost-thread-dev libglib2.0-dev
    pip3 install gattlib


bluetoothctl
https://www.cnet.com/how-to/how-to-setup-bluetooth-on-a-raspberry-pi-3/
https://gist.github.com/castis/0b7a162995d0b465ba9c84728e60ec01

> For this to work - take a look at the PULSEAUDIO FIX from the setup script.

[bluetooth]# agent on     
[bluetooth]# default-agent     
[bluetooth]# pairable on     
[bluetooth]# discoverable on     
[bluetooth]# scan on     
--> when the phone tries to connect - you need to trust it
[bluetooth]# trust     
--> if the connections fails in the meantime : phone --> pi, then we need to connect again, and it'll work.
    
https://github.com/labapart/gattlib - OTHER
