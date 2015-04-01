bam2sff
=======

forked from lvaruzza/bam2sff

Changes:

* found a small compiling issue with Linux GCC
* fixed a major error in bam2sff.cpp for flow index = flow_order2.length()


BAM to SFF and SFF to BAM converters.

Code extracted from https://github.com/iontorrent/TS, adpated to compile as stand alone tools.

Tested on Ubuntu 14.10 64bit

Installation requirements:

- cmake
- zlib
- TODO 


To compile run:

make_all.sh



