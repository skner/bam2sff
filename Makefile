.PHONY: src all clean bamtools

all: src 

src: bamtools
	$(MAKE) -C src

bamtools:
	cd bamtools
	
clean:
	$(MAKE) -C src clean
	
