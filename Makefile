BAMTOOLS = bamtools/lib/libbamtools.a

.PHONY: src all clean

all: src 

src: $(BAMTOOLS)
	$(MAKE) -C src

$(BAMTOOLS):
	./compile_bamtools.sh
	
clean:
	$(MAKE) -C src clean
	
