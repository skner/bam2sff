.PHONY: src all clean bamtools

all: src 

src: bamtools
	$(MAKE) -C src

bamtools:
	./make_bamtools.sh
	
clean:
	$(MAKE) -C src clean
	
