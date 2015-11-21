#!/usr/bin/env python
from socket import inet_aton
import struct

def sortIP(ip_list):
    return sorted(ip_list, key=lambda ip: struct.unpack("!L",
                  inet_aton(ip))[0])
