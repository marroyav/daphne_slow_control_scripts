#!/usr/bin/env python3
# dump.py -- dump DAPHNE spy buffers Python3

from oei import *
ip_endpoints_salev = [104, 105, 107, 109]
ip_endpoints_jura = [111] #, 112]
for i in ip_endpoints_salev:
    thing = OEI(f"10.73.137.{i}")

    print("DAPHNE firmware version %0X" % thing.read(0x9000,1)[2])

    thing.write(0x2000, [1234]) # software trigger, all spy buffers capture
    thing.write(0x2001, [1234]) # software trigger, all spy buffers capture
    #thing.write(0x4002, [1234]) # software trigger, all spy buffers capture

    print

    for afe in range(5):
        for ch in range(9):
            print("AFE%d[%d]: " % (afe,ch),end="")
            for x in thing.read(0x40000000+(afe*0x100000)+(ch*0x10000),15)[3:]:
                print("%04X " % x,end="")
            print()
        print()
           
    thing.close()

