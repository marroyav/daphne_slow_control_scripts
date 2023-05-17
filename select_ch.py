#!/usr/bin/env python3
# dump.py -- dump DAPHNE INPUT spy buffers
# Jamieson Olsen <jamieson@fnal.gov> Python3

from oei import *
for i in [4,5,7,9]:
    thing = OEI(f"10.73.137.10{i}")

    # write ANYTHING to register 0x0000_2000 to trigger ALL spy buffers
    # OR apply pulse to trigger input connector on the back of DAPHNE

    #thing.write(0x3000,[0x812080+i])
    
    thing.write(0x3001,[0xaa])
    #thing.write(0x6000,[0x1f4])
    for i in range (1):
        thing.write(0x5000+i,[7])
        print(f"reg 5001 = {thing.read(0x5000+i,1)[2]}")
           
    thing.close()

