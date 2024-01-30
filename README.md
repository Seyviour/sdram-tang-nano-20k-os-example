## SDRAM controller and usage example for Tang Nano 20K

An SDRAM controller and usage example for Tang Nano 20K, as used in [NESTang](https://github.com/nand2mario/nestang). The controller design works best for retro-game/computer cores (latency is as low as 5 cycles). The [example code](src/sdram_top.v) should be mostly self-explanatory.

Note: Press S1 button to start the example.

## This Repo
This repository provides the constraints necessary to get the embedded SDRAM to work via the open source tool chain.

Kindly See the original repository [https://github.com/nand2mario/sdram-tang-nano-20k]() for the unmodified design. 

## Requirements 
- [Apicula](https://github.com/yosyshq/apicula),
- [Yosys](https://github.com/yosyshq/yosys) (preferably built from source),
- [Nextpnr](https://github.com/yosyshq/nextpnr) (preferably built from source),
- [openFPGALoader](https://github.com/trabucayre/openFPGALoader) to flash the bitsream.
  
To generate the bistream, kindly run `make sdram.fs` from the `src` directory. If you get LEDS 1-3 on after flashing the bitsream, then the SDRAM is likely working correctly :)