#!/usr/bin/env python3
# send_command_list.py -- send a series of commands to the microcontroller and read the responses
# uses the new SPI slave firmware. Python 3.

from oei import *
from time import sleep

# write command to DAPHNE and read response
def write_and_read(thing, CmdString, get_response=True):
	CmdByteList = []
	print('Sending command: ', CmdString)
	for ch in CmdString:
		CmdByteList.append(ord(ch))
	
	CmdByteList.append(0x0d) # tack on CR
	#CmdByteList.append(0x0a) # and LF

	# write an ASCII bytes to the SPI command FIFO at 0x9000_0000
	for i in range((len(CmdByteList)+49)//50):
		thing.writef(0x90000000, CmdByteList[i*50:(i+1)*50])
	#	thing.writef(0x90000000, CmdByteList)

	# read the SPI slave response FIFO, this is also at address 0x9000_0000
	# if the FIFO is empty it will return zeros when read. this assumes the response will be
	# less than 200 characters
	ResString = ""
	if get_response:
		more = 40
		print(' ')
		print('Response: ')
		while more > 0:
			ResByteList = thing.readf(0x90000000,50) 
			for b in ResByteList[2:]:
				if b==255:
					break
				elif b==1:
					ResString += "[START]"
				elif b==2:
					ResString += "[RESULT]"
				elif b==3:
					ResString += "[END]"	
				elif chr(b).isprintable:
					more = 40
					ResString = ResString + chr(b)
			sleep(0.005)
			more -= 1
		ResString = ResString + chr(0)
		
		print(ResString)

def main():
	thing = OEI("10.73.137.109")
	if False:
		write_and_read(thing, 'RD OFFSET CH 6', get_response=True)

	if True:
		print('Sending commands to DAPHNE. ')
		# run initial command
		initial_command = 'CFG AFE ALL INITIAL'
		write_and_read(thing, initial_command)

		# write commands to each channel
		nChannels = 40
		for ch in range(nChannels):
			write_and_read(thing, 'WR OFFSET CH ' + str(int(ch)) + ' V 1100', get_response=True)
			write_and_read(thing, 'CFG OFFSET CH ' + str(int(ch)) + ' GAIN 2', get_response=True)
		
		# write commands to each AFE
		nAFEs = 5
		for AFE in range(nAFEs):
			write_and_read(thing, 'WR AFE '+ str(int(AFE)) + ' REG 52 V 21056', get_response=True)
			write_and_read(thing, 'WR AFE '+ str(int(AFE)) + ' REG 4 V 24', get_response=True)
			write_and_read(thing, 'WR AFE '+ str(int(AFE)) + ' REG 51 V 16', get_response=True)
			write_and_read(thing, 'WR AFE '+ str(int(AFE)) + ' VGAIN V 2667', get_response=True)
		print('Finished writing commands.')
	thing.close()

if __name__ == "__main__":
    main()





