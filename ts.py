#!/usr/bin/env python3
# dumpout.py -- dump DAPHNE OUTPUT spy buffer(s) Python3
# 
# Jamieson Olsen <jamieson@fnal.gov>

from oei import *
for i in [4,5,7,9]:
    thing = OEI(f"10.73.137.10{i}")
   # print ("DAPHNE ts %0X" % thing.read(0x40500000,1)[2])
   # thing.write(0x12345678,[0x093456789101112+i])
   # print ("DAPHNE test register %0X" % thing.read(0x12345678,1)[2])
    thing.write(0x2000, [1234])
    print (thing.read(0x4001,1)) 
   # print (f"time stamp in DAPHNE with ip address 10.73.137.10{i}  "  )
    print (thing.read(0x40500000,4)[3:])
    
    thing.close()
    
