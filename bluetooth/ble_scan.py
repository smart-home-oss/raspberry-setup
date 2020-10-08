#!/usr/bin/env python3

#  cat /usr/local/lib/python3.7/dist-packages/gattlib-0.20200929.dist-info/METADATA

from gattlib import DiscoveryService

service = DiscoveryService("hci0")
devices = service.discover(2)

for address, name in devices.items():
    print("name: {}, address: {}".format(name, address))
