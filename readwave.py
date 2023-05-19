#!/usr/bin/python3.6
# readwave.py -- plot waveforms from different DAPHNEs by getting data from spy buffers Python3
# 
# Sam Fogarty <samuel.fogarty@colostate.edu> 
# Manuel Arroyave <arroyave@fnal.gov>

from oei import *
import numpy as np 
import matplotlib.pyplot as plt

plt.figure()
plt.rcParams["figure.figsize"] = (15, 3)

# For daphne's you'd like to look at, put the endpoint of their ip addresses here
daphne_ip_endpoint = [104,105,107,109] # [4,5,7,9]
daphne_sticker = [1,2,5,6]
rec = [[] for i in range(len(daphne_ip_endpoint))]

# don't change these
base_register = 0x40000000
AFE_hex_base = 0x100000
Channel_hex_base = 0x10000

# choose AFE and channel to plot amongst the daphne's
AFE = 0
Channel = 7

do_software_trigger = True

# loop through daphne's to access SPI buffer data
for t,j in enumerate(daphne_ip_endpoint):
    thing = OEI(f"10.73.137.{j}")
    if do_software_trigger:
        thing.write(0x2000,[1234]) # trigger SPI buffers
    for i in range (0x3ff):
        doutrec = thing.read(base_register+(AFE_hex_base * AFE)+(Channel_hex_base * Channel)+i,1)
        for word in doutrec[2:]:
            rec[t].append(word)
    thing.close()

# plot the waveforms
for i in range(len(rec)):
    num = daphne_sticker[i]
    plt.plot(rec[i][0:-1], linewidth=0.5, label=f'DAPHNE {num}')

plt.title("DAPHNE waveforms from SPI Buffers")
plt.xlabel("Samples")
plt.ylabel("14 bits data")
plt.legend()
plt.show()

