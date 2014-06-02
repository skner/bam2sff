INCLUDE=-I bamtools/src/ -I file-io/ -I Util/
LIBS=-lbamtools   -L bamtools/lib/
OBJ=file-io/sff_read.o \
    file-io/sff.o \
    file-io/sff_file.o \
    file-io/ion_alloc.c \
    file-io/ion_error.o \
    file-io/ion_string.o \
    file-io/ion_util.o \
    file-io/sff_check.o \
    file-io/sff_header.o \
    file-io/sff_index.o \
    file-io/sff_iter.o \
    file-io/sff_read_header.o \
    file-io/sff_sort.o \
    Util/IonErr.o \
    Util/Logger.o \
    Util/LoggerBase.o \
    Util/OptArgs.o \
    Util/OptionArgs.o \
    Util/OptionArgsBase.o \
    Util/SeqUtils.o \
    Util/StackDump.o \
    Util/Utils.o \
    Util/WorkerInfoQueue.o \
    Util/flow_utils.o \
    Util/jsoncpp.o




%.o: %.cpp
	g++ -c $(CXXFLAGS) $(INCLUDE) $< -o $@

%.o: %.c
	gcc -c $(CFLAGS) $(INCLUDE) $< -o $@

all: bam2sff sff2bam
bam2sff: bam2sff.cpp $(OBJ)
	g++ $(CXXFLAFS) -o $@  bam2sff.cpp $(OBJ) $(INCLUDE) $(LIBS) 

sff2bam: sff2bam.cpp $(OBJ)
	g++ $(CXXFLAFS) -o $@ sff2bam.cpp $(OBJ) $(INCLUDE) $(LIBS) 


clean:
	rm $(OBJ) bam2sff sff2bam
	
