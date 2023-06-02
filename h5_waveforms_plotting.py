import numpy as np
import h5py
import matplotlib.pyplot as plt

file = h5py.File('test.h5', 'r')
waveforms = file['waveforms']
waveforms_avg = file['waveforms_avg']

fig = plt.figure()

channel = 0
AFE = 0
wvfms = waveforms[(waveforms['channel'] == channel) & (waveforms['AFE'] == AFE)]['adc']
wvfms_avg = waveforms_avg[(waveforms_avg['channel'] == channel) & (waveforms_avg['AFE'] == AFE)]['adc'][0]

i = 0
plt.title(f'Channel {channel} of AFE {AFE}')
plt.plot(wvfms[i], 'bo', markersize=1, label = 'Single waveform')
plt.plot(wvfms_avg, 'ro', markersize=1, label='Averaged waveform')
plt.xlabel('Samples')
plt.ylabel('ADC counts')
plt.legend()
plt.show()
