Consume FLX-device data while checking the data (blockheader and trailers),
counts errors including chunk truncation, halts when the memory buffer is near overflowing.
Also counts chunk CRC errors.
Opened FLX-device 0, firmw FLX712-FULL-6chan-1910282359-GIT:dune/v1./266, trailer=32bit block=4K, buffer=1024MB, DMA=0
**START** using DMA #0 polling
  Secs | Recvd[MB/s] | File[MB/s] | Total[(M)B] | Rec[(M)B] | Buf[%] | Wraps
-------|-------------|------------|-------------|-----------|--------|-------
     1         924.5          0.0         924.5           0        2       0
   ### Blocks 221882 Errors: header=0 trailer=2 (trunc=2,err=0,length=0,type=0) crc=0
**STOP**
-> Data checked: Blocks 221882, Errors: header=0 trailer=2, ErrorI 4

First block with error, raw:
==> BLOCK (E=100=4-0 seq=0):
   0:   0  1 ce c3  0  0  0 50 81 20 80  0 93 5f 8c 62 e7  0  0  0 83 10  0  0 ef be ad de 80 3f e0  f 
  32:  f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
  64:  3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
  96:   3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
 128:  e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
 160:  fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
 192:   f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
 224:  80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
 256:  f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
 288:  3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
 320:   3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
 352:  e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
 384:  fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
 416:   f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
 448:  80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe ff ff ff ff 
 480:  81 20 80  0 d3 5f 8c 62 e7  0  0  0 83 10  0  0 ef be ad de 80 3f e0  f f8  3 fe 80 3f e0  f f8 
 512:   3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
 544:  e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
 576:  fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
 608:   f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
 640:  80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
 672:  f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
 704:  3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
 736:   3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
 768:  e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
 800:  fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
 832:   f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
 864:  80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
 896:  f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
 928:  3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe ff ff ff ff 81 20 80  0 13 60 8c 62 
 960:  e7  0  0  0 83 10  0  0 ef be ad de 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
 992:  fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
1024:   f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
1056:  80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
1088:  f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
1120:  3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
1152:   3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
1184:  e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
1216:  fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
1248:   f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
1280:  80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
1312:  f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
1344:  3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
1376:   3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
1408:  e0  f f8  3 fe 80 3f e0  f f8  3 fe ff ff ff ff 81 20 80  0 53 60 8c 62 e7  0  0  0 83 10  0  0 
1440:  ef be ad de 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
1472:  80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
1504:  f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
1536:  3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
1568:   3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
1600:  e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
1632:  fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
1664:   f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
1696:  80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
1728:  f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
1760:  3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
1792:   3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
1824:  e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
1856:  fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
1888:   f f8  3 fe ff ff ff ff 81 20 80  0 93 60 8c 62 e7  0  0  0 83 10  0  0 ef be ad de 80 3f e0  f 
1920:  f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
1952:  3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
1984:   3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
2016:  e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
2048:  fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
2080:   f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
2112:  80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
2144:  f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
2176:  3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
2208:   3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
2240:  e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
2272:  fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
2304:   f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
2336:  80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe ff ff ff ff 
2368:  81 20 80  0 d3 60 8c 62 e7  0  0  0 83 10  0  0 ef be ad de 80 3f e0  f f8  3 fe 80 3f e0  f f8 
2400:   3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
2432:  e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
2464:  fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
2496:   f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
2528:  80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
2560:  f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
2592:  3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
2624:   3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
2656:  e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
2688:  fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
2720:   f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
2752:  80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
2784:  f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
2816:  3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe ff ff ff ff 81 20 80  0 13 61 8c 62 
2848:  e7  0  0  0 83 10  0  0 ef be ad de 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
2880:  fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
2912:   f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
2944:  80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
2976:  f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
3008:  3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
3040:   3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
3072:  e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
3104:  fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
3136:   f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
3168:  80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
3200:  f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
3232:  3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
3264:   3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
3296:  e0  f f8  3 fe 80 3f e0  f f8  3 fe ff ff ff ff 81 20 80  0 53 61 8c 62 e7  0  0  0 83 10  0  0 
3328:  ef be ad de 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
3360:  80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
3392:  f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
3424:  3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
3456:   3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
3488:  e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
3520:  fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
3552:   f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
3584:  80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
3616:  f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
3648:  3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
3680:   3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
3712:  e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
3744:  fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
3776:   f f8  3 fe ff ff ff ff 81 20 80  0 93 61 8c 62 e7  0  0  0 83 10  0  0 ef be ad de 80 3f e0  f 
3808:  f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
3840:  3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
3872:   3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
3904:  e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
3936:  fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
3968:   f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
4000:  80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
4032:  f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
4064:  3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 f4  f  0 20 

First block with error, chunk data:
==> BLOCK (E=100=4-0 seq=0): 4084 databytes
 &&T (sz=0)
 81 20 80  0 93 5f 8c 62 e7  0  0  0 83 10  0  0 ef be ad de 80 3f e0  f f8  3 fe 80 3f e0  f f8 
  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
 e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
 f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
 e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
 f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe ff ff ff ff 81 20 80  0 d3 5f 8c 62 
 e7  0  0  0 83 10  0  0 ef be ad de 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
 f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
 e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
 f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
 e0  f f8  3 fe 80 3f e0  f f8  3 fe ff ff ff ff 81 20 80  0 13 60 8c 62 e7  0  0  0 83 10  0  0 
 ef be ad de 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
 f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
 e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
 f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
 e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
  f f8  3 fe ff ff ff ff 81 20 80  0 53 60 8c 62 e7  0  0  0 83 10  0  0 ef be ad de 80 3f e0  f 
 f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
 e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
 f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
 e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe ff ff ff ff 
 81 20 80  0 93 60 8c 62 e7  0  0  0 83 10  0  0 ef be ad de 80 3f e0  f f8  3 fe 80 3f e0  f f8 
  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
 e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
 f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
 e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
 f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe ff ff ff ff 81 20 80  0 d3 60 8c 62 
 e7  0  0  0 83 10  0  0 ef be ad de 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
 f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
 e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
 f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
 e0  f f8  3 fe 80 3f e0  f f8  3 fe ff ff ff ff 81 20 80  0 13 61 8c 62 e7  0  0  0 83 10  0  0 
 ef be ad de 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
 f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
 e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
 f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
 e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
  f f8  3 fe ff ff ff ff 81 20 80  0 53 61 8c 62 e7  0  0  0 83 10  0  0 ef be ad de 80 3f e0  f 
 f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
 e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
 f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
 e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe ff ff ff ff 
 81 20 80  0 93 61 8c 62 e7  0  0  0 83 10  0  0 ef be ad de 80 3f e0  f f8  3 fe 80 3f e0  f f8 
  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
 e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 
 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0 
  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 
 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f 
 f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 
 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8 
  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f 
 e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 3f e0  f f8  3 fe 80 ++ (sz=4084)

Exiting..
