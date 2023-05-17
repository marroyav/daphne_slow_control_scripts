#!/usr/bin/python3.6
# dumpout.py -- dump DAPHNE OUTPUT spy buffer(s) Python3
# 
# Manuel Arroyave <arroyave@fnal.gov>

from oei import *
import numpy as np 
import matplotlib.pyplot as plt

rec=[[],[],[],[],[],[],[],[]]
plt.figure()
plt.rcParams["figure.figsize"] = (15, 3)

AFE = 4 #4,5,7,or 9
for t,j in enumerate([4]):
    thing = OEI(f"10.73.137.10{j}")
    thing.write(0x2000,[1234])
    for i in range (0x3ff):
        for d in range (8):
            doutrec = thing.read(0x40000000+(0x00010000*d)+i,1)
            for word in doutrec[2:]:
                rec[d].append(word)
    thing.close()
for i in range (8):
    plt.plot(rec[i][0:-1], linewidth=0.5, label=f'ch {i}')

plt.title("waveform")
plt.xlabel("Samples")
plt.ylabel("14 bits data")
plt.legend()
plt.show()

