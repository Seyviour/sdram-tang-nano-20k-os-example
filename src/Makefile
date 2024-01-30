YOSYS ?= yosys
NEXTPNR ?= nextpnr-himbaechel

all: \
	sdram.fs

clean:
	rm -f *.json *.fs *.log

sdram.fs: sdram.pnr.json
	gowin_pack -d GW2A-18C -o sdram.fs sdram.pnr.json

sdram.pnr.json: sdram.synth.json nano20k.cst
	$(NEXTPNR) --json sdram.synth.json --write sdram.pnr.json --device GW2AR-LV18QN88C8/I7 --vopt family=GW2A-18C --vopt cst=nano20k.cst

sdram.synth.json: print.v sdram_top.v sdram.v nan20ksdram.ys
	$(YOSYS) -s nan20ksdram.ys > sdram.synth.log

