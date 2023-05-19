#!/usr/bin/python3.6
# readwave_afe.py -- plot waveforms from the channels in AFEs from DAPHNE OUTPUT spy buffer(s) Python3
#
# Sam Fogarty <samuel.fogarty@colostate.edu> 
# Manuel Arroyave <arroyave@fnal.gov>

from oei import *
import numpy as np 
import matplotlib.pyplot as plt

def main():
    keep_plotting = True
    ###### edit these lines depending on the daphne, AFEs, and channels you want to look at 
    # for the daphne you'd like to look at, put the endpoint of its ip address here
    daphne_ip_endpoint = 104
    # put number that's on sticker. Used for labeling plot.
    daphne_sticker = 1
    # list the channels you'd like to plot
    channels = [0, 1, 2, 3, 4, 5, 6, 7]
    channels = [0,1]
    # AFEs to look at
    AFEs = [0] # 0, 1, 2, 3, and/or 4
    #######
    
    # plot-related stuff to adjust for showing different numbers of AFEs
    if len(AFEs) == 1:
        figsize = (7,5)
        nrows, ncols = 1, 1
    elif len(AFEs) == 2:
        figsize = (14,5)
        nrows, ncols = 1, 2
    elif len(AFEs) == 3:
        figsize = (16.5, 4)
        nrows, ncols = 1, 3
    elif len(AFEs) >= 4:
        figsize = (16, 9)
        nrows, ncols = 2, 3
    
    #fig, axes = plt.subplots(nrows=nrows, ncols=ncols, sharex=False, sharey=False, figsize=figsize)
    if len(AFEs) == 1:
        axes = [axes]
    plt.ion()
    # don't change these
    base_register = 0x40000000
    AFE_hex_base = 0x100000
    Channel_hex_base = 0x10000
         
    do_software_trigger = False
        
    thing = OEI(f"10.73.137.{daphne_ip_endpoint}")
         
    colors = ['tab:blue', 'tab:orange', 'tab:green', 'tab:red', 'tab:purple', 'tab:brown', 'tab:gray', 'tab:olive']
    while keep_plotting:
        fig, axes = plt.subplots(nrows=nrows, ncols=ncols, sharex=False, sharey=False, figsize=figsize)
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
        
            for d,channel in enumerate(channels):
                if len(AFEs) <= 3:
                    plot = axes[g]
                    if g == 0:
                        plot.set_ylabel('14 bits data')
                else:
                    if g < 3:
                        plot = axes[0,g]
                        if g == 0:
                            plot.set_ylabel('14 bits data')
                    else:
                        plot = axes[1, g-3]
                        if g == 3:
                            plot.set_ylabel('14 bits data')
                plot.set_title(f'AFE{AFE}', fontsize=10)
                plot.plot(rec[d][0:-1], linewidth=0.5,color=colors[channel], label=f'ch {channel}')
                plot.set_xlabel('samples', fontsize=8)
                plot.legend(loc='lower right',fontsize='xx-small',framealpha=0.5)
        
        if len(AFEs) == 5:
            axes[1, 2].remove()
        elif len(AFEs) == 4:
            axes[1, 2].remove()
            axes[1, 1].remove()
        plt.show(block=False)
        plt.pause(1)
        user_input = input("Enter 'a' to acquire again, 'q' to quit.\n")
        if user_input == 'q':
            keep_plotting = False
            thing.close()
        elif user_input == 'a':
            plt.close()
            continue
        else:
            continue

if __name__ == "__main__":
    main()
