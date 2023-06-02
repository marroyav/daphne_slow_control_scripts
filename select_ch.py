#!/usr/bin/env python3
# dump.py -- dump DAPHNE INPUT spy buffers
# Jamieson Olsen <jamieson@fnal.gov> Python3

from oei import *
for i in [4,5,7,9]:
#for i in [9]:
    thing = OEI(f"10.73.137.10{i}")
    print (f"address= 10.73.137.10{i}")
    # write ANYTHING to register 0x0000_2000 to trigger ALL spy buffers
    # OR apply pulse to trigger input connector on the back of DAPHNE

    #thing.write(0x3000,[0x812080+i])
    
    thing.write(0x3001,[0xff])
    print(f"streamming mode = {thing.read(0x3001,1)[2]}")
    thing.write(0x6000,[100])
    print(f"threshhold = {thing.read(0x6000,1)[2]}")
    thing.write(0x6001,[0b11111111])
    print(f"channels active = {thing.read(0x6001,1)[2]}")
    var = 0x5000-1
    for i in range (4):
        for j in range(4):
            var = var + 1
            thing.write(var,[i*10+j])
            print(f"reg {hex(var)} = {thing.read(var,2)[2]}")
           
    thing.close()

