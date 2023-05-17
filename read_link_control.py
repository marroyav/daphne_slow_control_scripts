#!/usr/bin/env python3
# dump.py -- dump DAPHNE INPUT spy buffers
# Jamieson Olsen <jamieson@fnal.gov> Python3

from oei import *
for i in [4,5,7,9]:
    thing = OEI(f"10.73.137.10{i}")
    reg=hex(thing.read(0x3001,8)[2])
    print(f"reg= {reg} in ip address ending in {i}!" )
           
    thing.close()

