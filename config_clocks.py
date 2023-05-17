#!/usr/bin/env python3                                                      
# endpoint_status.py -- report on endpoint status bits Python3                                 
import argparse         
import time
from oei import *                                                                              

class config(object):
    def __init__(self,ip_address):


        thing = OEI(ip_address)

        print("DAPHNE firmware version %0X" % thing.read(0x9000,1)[2])

        # master clock input can be endpoint (=1) or local clocks (=0), choose that here:

        USE_ENDPOINT = 1

        # configure these misc timing endpoint parameters

        EDGE_SELECT = 0
        TIMING_GROUP = 0
        ENDPOINT_ADDRESS = 0

        # now write to the master clock and endpoint control register:

        #temp = (ENDPOINT_ADDRESS&0xFF)<<8 + (TIMING_GROUP&0x3)<<2 + (EDGE_SELECT&0x1)<<1 + (USE_ENDPOINT & 0x1)

        thing.write(0x4001, [USE_ENDPOINT]) 
        thing.write(0x3000, [0x802081+(0x001000*int(ip_address[-1]))]) 
        thing.write(0x3001, [0b11111111]) 

        # now reset the timing endpoint logic

        thing.write(0x4003, [1234])

        # wait a moment for timing endpoint clocks to stabilize...

        time.sleep(0.5)
        # reset the master clock MMCM1 
        thing.write(0x4002, [1234])

        # wait a moment for the master clocks to stabilize...

        time.sleep(0.5)

        # reset the front end and force recalibration

        thing.write(0x2001, [1234]) 
        thing.write(0x3000, [0x3c802081]) 

        # wait a moment for the front end logic to recalibrate...

        time.sleep(0.5)

        # dump out front end status registers...

        # 5 LSb's = DONE bits should be HIGH if the front end has completed auto alignment

        print("AFE automatic alignment done, should read 0x1F: %0X" % thing.read(0x2002,1)[2])

        # bit error count registers for each AFE 
        # if an error is observed on the "FCLK" pattern it increments this counter up to 0xFF

        print("AFE0 Error Count = %0X" % thing.read(0x2010,1)[2])
        print("AFE1 Error Count = %0X" % thing.read(0x2011,1)[2])
        print("AFE2 Error Count = %0X" % thing.read(0x2012,1)[2])
        print("AFE3 Error Count = %0X" % thing.read(0x2013,1)[2])
        print("AFE4 Error Count = %0X" % thing.read(0x2014,1)[2])
        print("Crate number = %0X" % thing.read(0x3000,1)[2])

        thing.close()
def main():
    parser = argparse.ArgumentParser(description="Initial configuration of DAPHNE")
    parser.add_argument('--ip', type=str, required=False, help='IP address.')
    args=parser.parse_args()
    if args.ip:
        c=config(args.ip)
    else:
        for i in [4,5,7,9]:
            c=config(f"10.73.137.10{i}")



if __name__ == "__main__":
    main()

