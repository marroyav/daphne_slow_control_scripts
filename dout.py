#!/usr/bin/env python3
# dumpout.py -- dump DAPHNE OUTPUT spy buffer(s) Python3
# 
# Jamieson Olsen <jamieson@fnal.gov>

from oei import *
for i in [4,5,7,9]:
    thing = OEI(f"10.73.137.10{i}")
    thing.write(0x2000,[1234])
    #rec=[]
    #for i in range (1):
    doutrec = thing.read(0x40600000,50)
    #rec.append(doutrec)
    print("--------")
    for word in doutrec[2:]:
        print("%08X" % word)
    thing.close()
