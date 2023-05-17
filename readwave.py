#!/usr/bin/python3.6
# dumpout.py -- dump DAPHNE OUTPUT spy buffer(s) Python3
# 
# Manuel Arroyave <arroyave@fnal.gov>

from oei import *
import numpy as np 
import matplotlib.pyplot as plt

rec=[[],[],[],[]]
plt.figure()
plt.rcParams["figure.figsize"] = (15, 3)
for t,j in enumerate([4,5,7,9]):
    thing = OEI(f"10.73.137.10{j}")
    thing.write(0x2000,[1234])
    for i in range (0x3ff):
        doutrec = thing.read(0x40070000+i,1)
        for word in doutrec[2:]:
            rec[t].append(word)
    thing.close()
plt.plot(rec[0][0:-1],'r', linewidth=0.5, label='DAPHNE 1')
plt.plot(rec[1][0:-1],'b', linewidth=0.5,label='DAPHNE 2')
plt.plot(rec[2][0:-1],'g', linewidth=0.5, label='DAPHNE 5')
plt.plot(rec[3][0:-1],'y', linewidth=0.5, label='DAPHNE 6')

plt.title("waveform")
plt.xlabel("Samples")
plt.ylabel("14 bits data")
plt.legend()
plt.show()

