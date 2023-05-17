da:00.0 Communication controller: CERN/ECP/EDU Device 0428
db:00.0 Communication controller: CERN/ECP/EDU Device 0427

General information
------------------------
Card type             : FLX-712
Reg Map version       : 5.0
FW version date       : 19/10/28 23:59
GIT tag               : dune/v1.
GIT commit number     : 266
GIT hash              : 0x00000000d853795b
Active F/W partition  : 3
Firmware mode         : FULL
Number of interrupts  : 8
Number of descriptors : 2
Number of channels    : 6
Number of endpoints   : 2
GBT Wrapper generated : YES
MAIN clock source     : LCLK fixed
Internal PLL Lock     : YES

Output of lspci: 
------------------------

FPGA status
------------------------
Temperature                :  55.861023 C
Internal voltage  [VccInt] :  0.938965 V
Auxiliary voltage [VccAux] :  1.779053 V
BRAM voltage      [VccBRAM]:  0.940430 V
DNA                        :  0x012941480d0101c5 
Fan speed                  :  9021 RPM

TTC (ADN2814) status
------------------------
Bit D5=1: No light arriving. Check fiber connection to FLX card
(Raw value of ADN2814 MISR register: 0xff)

LTC status
------------------------
First LTC2991:
|Parameter                          | Value     | Unit|
|================================== | ========= | ====|
|VCCINT current                     |   3.83989 |    A|
|VCCINT voltage                     |   0.94972 |    V|
|MGTAVCC current                    |   3.03548 |    A|
|MGTAVCC voltage                    |   1.00374 |    V|
|FPGA internal diode temperature    |  58.62500 |    C|
|MGTAVTT current                    |   1.86682 |    A|
|MGTAVTT voltage                    |   1.21034 |    V|
|LTC2991_1 internal temperature     |  42.75000 |    C|
|VCC                                |   3.30690 |    V|

Second LTC2991:
|Parameter                          | Value     | Unit|
|================================== | ========= | ====|
|PEX0P9V current                    |   6.26069 |    A|
|PEX0P9V voltage                    |   0.92927 |    V|
|SYS18 current                      |   1.21419 |    A|
|SYS18 voltage                      |   1.78408 |    V|
|SYS25 current                      |   1.31285 |    A|
|SYS25 voltage                      |   2.47409 |    V|
|PEX8732 internal diode temperature |  62.87500 |    C|
|LTC2991_2 internal temperature     |  41.12500 |    C|
|VCC                                |   3.30506 |    V|

MiniPODs status
------------------------
               |  1st TX |  1st RX |  2nd TX |  2nd RX |  3rd TX |  3rd RX |  4th TX |  4th RX |
               |=========|=========|=========|=========|=========|=========|=========|=========|
Temperature [C]|      53 |      55 |      49 |      46 |    ---- |    ---- |    ---- |    ---- |
3.3 VCC     [V]|    3.26 |    3.29 |    3.29 |    3.27 |    ---- |    ---- |    ---- |    ---- |
2.5 VCC     [V]|    2.41 |    2.38 |    2.47 |    2.43 |    ---- |    ---- |    ---- |    ---- |

How to the read the table below:
* = FLX link endpoint OK     (no LOS)
- = FLX link endpoint not OK (LOS)
First letter:  Current channel status
Second letter: Latched channel status
Example: *(-) means channel had lost the signal in the past but the signal is present now.

Latched / current link status of channel:
        |   0  |   1  |   2  |   3  |   4  |   5  |   6  |   7  |   8  |   9  |  10  |  11  |
        |======|======|======|======|======|======|======|======|======|======|======|======|
 1st TX | *(*) | *(*) | *(*) | *(*) | *(*) | *(*) | *(*) | *(*) | *(*) | *(*) | *(*) | *(*) | 
 1st RX | *(*) | *(*) | *(*) | *(*) | *(*) | *(*) | *(*) | *(*) | *(*) | *(*) | *(*) | *(*) | 
 2nd TX | -(-) | -(-) | -(-) | -(-) | -(-) | -(-) | -(-) | -(-) | -(-) | -(-) | -(-) | -(-) | 
 2nd RX | -(-) | -(-) | -(-) | -(-) | -(-) | -(-) | -(-) | -(-) | -(-) | -(-) | -(-) | -(-) | 
 3rd TX | <not detected>
 3rd RX | <not detected>
 4th TX | <not detected>
 4th RX | <not detected>

Optical power (rx or tx) of channel in uW:
        |     0   |     1   |     2   |     3   |     4   |     5   |     6   |     7   |     8   |     9   |    10   |    11   |
        |=========|=========|=========|=========|=========|=========|=========|=========|=========|=========|=========|=========|
 1st TX | 1157.70 | 1200.20 | 1213.70 | 1090.50 | 1219.70 | 1121.60 | 1209.30 | 1141.90 | 1236.90 | 1113.70 | 1196.70 | 1095.60 | 
 1st RX |  342.90 |  364.60 |  306.70 |  393.10 |  381.30 |  437.60 |  372.20 |  438.60 |  425.60 |  376.30 |  278.60 |  291.30 | 
 2nd TX | 1091.10 | 1163.60 | 1069.10 | 1061.40 | 1000.80 | 1123.20 | 1057.80 | 1073.20 | 1007.30 |  995.30 |  979.80 |  985.30 | 
 2nd RX |    0.00 |    0.00 |    0.00 |    0.00 |    0.00 |    0.00 |    0.00 |    0.00 |    0.00 |    0.00 |    0.00 |    0.00 | 
 3rd TX | <not detected>
 3rd RX | <not detected>
 4th TX | <not detected>
 4th RX | <not detected>

                |         1st TX |         1st RX |         2nd TX |         2nd RX |         3rd TX |         3rd RX |         4th TX |         4th RX |
                |================|================|================|================|================|================|================|================|
Name            | AVAGO          | AVAGO          | AVAGO          | AVAGO          | --             | --             | --             | --             |
OUI             | 0x00 0x17 0x6a | 0x00 0x17 0x6a | 0x00 0x17 0x6a | 0x00 0x17 0x6a | --             | --             | --             | --             | 
Part number     | AFBR-814FN1Z   | AFBR-824FN1Z   | AFBR-814FN1Z   | AFBR-824FN1Z   | --             | --             | --             | --             |
Revision number | 32 32          | 32 32          | 32 32          | 32 32          | --             | --             | --             | --             | 
Serial number   | A18235014      | A1507G043      | A1823500V      | A17444020      | --             | --             | --             | --             |
Date code       | 2018061        | 2015021        | 2018061        | 2017121        | --             | --             | --             | --             |

Frequencies status
------------------------
RXUSRCLK frequency:
Chan  0: 120.525898 MHz
Chan  1: 120.525899 MHz
Chan  2: 120.525898 MHz
Chan  3: 120.525899 MHz
Chan  4: 120.526285 MHz
Chan  5: 120.526285 MHz
Chan  6: 120.526286 MHz
Chan  7: 120.525911 MHz
Chan  8: 120.526075 MHz
Chan  9: 120.526075 MHz
Chan 10: 120.526285 MHz
Chan 11: 120.525911 MHz

TTC monitor status
------------------------
TTC L1ID / XL1ID monitor                           = 0x00000000
Number of ECR received from the TTC system         = 0
Number of TType received from the TTC system       = 0
Number of times the BCR period does not match 3564 = 4294967295

SI5324 status
------------------------
Skipping SI5324: not on this card type

LMK03200 status
------------------------
Bitfield BF_LMK_LOCKED holds value 1

SI5345 status
------------------------
Loss of lock (LOL): No
Loss of signal (LOS) of input 1: No

CXP status
------------------------
Skipping CXP: not on this card type

DDR3 status
------------------------
Skipping DDR3: not on this card type

E-groups status
------------------------
Endpoint 0 CHANNEL 0, FULLMODE firmware: enabled
Endpoint 0 CHANNEL 1, FULLMODE firmware: enabled
Endpoint 0 CHANNEL 2, FULLMODE firmware: enabled
Endpoint 0 CHANNEL 3, FULLMODE firmware: enabled
Endpoint 0 CHANNEL 4, FULLMODE firmware: enabled
Endpoint 0 CHANNEL 5, FULLMODE firmware: enabled
Endpoint 1 CHANNEL 0, FULLMODE firmware: enabled
Endpoint 1 CHANNEL 1, FULLMODE firmware: enabled
Endpoint 1 CHANNEL 2, FULLMODE firmware: enabled
Endpoint 1 CHANNEL 3, FULLMODE firmware: enabled
Endpoint 1 CHANNEL 4, FULLMODE firmware: enabled
Endpoint 1 CHANNEL 5, FULLMODE firmware: enabled

E-link alignment status
------------------------
Endpoint 0 (* aligned, - not aligned)
LNK 0        8       16       24       32       40       48       56
 0: *------- -------- -------- -------- -------- -------- -------- --
 1: *------- -------- -------- -------- -------- -------- -------- --
 2: *------- -------- -------- -------- -------- -------- -------- --
 3: *------- -------- -------- -------- -------- -------- -------- --
 4: *------- -------- -------- -------- -------- -------- -------- --
 5: *------- -------- -------- -------- -------- -------- -------- --
Endpoint 1 (* aligned, - not aligned)
LNK 0        8       16       24       32       40       48       56
 0: *------- -------- -------- -------- -------- -------- -------- --
 1: *------- -------- -------- -------- -------- -------- -------- --
 2: *------- -------- -------- -------- -------- -------- -------- --
 3: *------- -------- -------- -------- -------- -------- -------- --
 4: *------- -------- -------- -------- -------- -------- -------- --
 5: *------- -------- -------- -------- -------- -------- -------- --

Link alignment status
------------------------
Channel |  0    1    2    3    4    5  
        ------------------------------
Aligned | YES  YES  YES  YES  YES  YES 

Channel |  6    7    8    9   10   11  
        ------------------------------
Aligned | YES  YES  YES  YES  YES  YES 

SFP status:
------------------------
Skipping SFP: not on this card type
