#!/usr/bin/env python3
# dump.py -- dump DAPHNE INPUT spy buffers
# Jamieson Olsen <jamieson@fnal.gov> Python3

from oei import *

thing = OEI("10.73.137.109")

# write ANYTHING to register 0x0000_2000 to trigger ALL spy buffers
# OR apply pulse to trigger input connector on the back of DAPHNE

thing.write(0x5000, [0])
thing.write(0x5001, [1])
thing.write(0x5002, [2])
thing.write(0x5003, [3])

thing.write(0x5010, [4])
thing.write(0x5011, [5])
thing.write(0x5012, [6])
thing.write(0x5013, [7])

thing.write(0x5020, [8])
thing.write(0x5021, [9])
thing.write(0x5022, [10])
thing.write(0x5023, [11])

thing.write(0x5030, [12])
thing.write(0x5031, [13])
thing.write(0x5032, [14])
thing.write(0x5033, [15])
print("Channels configured!")
       
thing.close()

