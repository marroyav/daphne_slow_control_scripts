#!/usr/bin/python3.6
# readwave_afe.py -- plot waveforms from the channels in AFEs from DAPHNE OUTPUT spy buffer(s) Python3
# 
# Manuel Arroyave <arroyave@fnal.gov>

from oei import *
import numpy as np 
from tqdm import tqdm
import h5py
import time

def main():
    keep_acquiring = True
    nWaveforms = 50
    ###### edit these lines depending on the daphne, AFEs, and channels you want to look at 
    # for the daphne you'd like to look at, put the endpoint of its ip address here
    daphne_ip_endpoint = 104
    # put number that's on sticker. Used for labeling plot.
    daphne_sticker = 1
    # list the channels you'd like to plot
    channels = [0, 1, 2, 3, 4, 5, 6, 7]
    channels = [0,1,2,3,4,5,6,7]
    # AFEs to look at
    AFEs = [0,1,2,3,4] # 0, 1, 2, 3, and/or 4
    #######
    
    # don't change these
    base_register = 0x40000000
    AFE_hex_base = 0x100000
    Channel_hex_base = 0x10000
         
    do_software_trigger = True
        
    thing = OEI(f"10.73.137.{daphne_ip_endpoint}")
    
    #data_dtype = np.dtype([()])
    start_acquisition = time.time()
    print(f'Starting acquisition of {len(AFEs) * len(channels)} channels...')
    for w in tqdm(range(nWaveforms), desc = ' Reading waveforms: '):
        if do_software_trigger:
            thing.write(0x2000,[1234]) # trigger SPI buffer
        # this list of lists is used to store waveform data
        rec = [[] for i in range(len(channels))]
        # loop through AFEs, grab waveforms from channels and plot
        for g,AFE in enumerate(AFEs):
            # this list of lists is used to store waveform data
            rec = [[] for i in range(len(channels))]
            for i in range (0x3ff):
                for d,channel in enumerate(channels):
                    doutrec = thing.read(base_register+(AFE_hex_base * AFE)+(Channel_hex_base * channel)+i,1)
                    for word in doutrec[2:]:
                        rec[d].append(word)
    end_acquisition = time.time()
    print(f'Total time to acquire {nWaveforms} waveforms was {"%.3f" % (end_acquisition-start_acquisition)} seconds with a rate of {"%.3f" % (nWaveforms / (end_acquisition-start_acquisition))} Hz')    
    thing.close()

if __name__ == "__main__":
    main()
