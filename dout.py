#!/usr/bin/env python3
# dumpout.py -- dump DAPHNE OUTPUT spy buffer(s) Python3
# 
# Jamieson Olsen <jamieson@fnal.gov>

from oei import *
#for i in [4,5,7,9]:
for i in [4]:
    thing = OEI(f"10.73.137.10{i}")
    for i in range (10):
        doutrec = []
        thing.write(0x2000,[1234])
        print(f"waveform {i}")
        doutrec = thing.read(0x40600000,150)
        
        for word in doutrec[3:]:
            print("%08X" % word,end='')
    thing.close()
