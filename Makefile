# SHELL += -x

CXX = g++
# CXX = clang++  # Uncomment this line to build with Clang.
CC = gcc    #

all: check_required_programs atlas openblas
	@echo -e "\n\n"
	@echo "All done OK."

# make sure check_required_programs runs before anything else:
atlas openblas: | check_required_programs

check_required_programs:
	extras/check_dependencies.sh

clean:

distclean:
	rm -rf ATLAS/
	rm -rf atlas3.8.3.tar.gz

atlas: ATLAS/include/cblas.h

ATLAS/include/cblas.h: | atlas3.8.3.tar.gz
	tar xozf atlas3.8.3.tar.gz ATLAS/include

atlas3.8.3.tar.gz:
	wget -T 10 ftp://ftp.vim.org/vol/2/metalab/distributions/tinycorelinux/2.x/tce/src/libatlas/atlas3.8.3.tar.gz || \
    wget -T 10 http://sourceforge.net/projects/math-atlas/files/Stable/3.8.3/atlas3.8.3.tar.gz || \
	wget --no-check-certificate -T 10 -t 3 http://www.danielpovey.com/files/kaldi/atlas3.8.3.tar.gz

openblas: openblas_compiled

.PHONY: openblas_compiled

fortran_opt = $(shell gcc -v 2>&1 | perl -e '$$x = join(" ", <STDIN>); if($$x =~ m/target=\S+64\S+/) { print "BINARY=64"; }')

openblas_compiled:
	-git clone https://github.com/xianyi/OpenBLAS.git
	-cd OpenBLAS; git pull
	cd OpenBLAS; sed 's:# FCOMMON_OPT = -frecursive:FCOMMON_OPT = -frecursive:' < Makefile.rule >tmp && mv tmp Makefile.rule
	# $(MAKE) PREFIX=`pwd`/OpenBLAS/install FC=gfortran $(fortran_opt) DEBUG=1 USE_THREAD=1 NUM_THREADS=2 -C OpenBLAS all install
	$(MAKE) PREFIX=`pwd`/OpenBLAS/install FC=gfortran $(fortran_opt) DEBUG=1 USE_THREAD=0 -C OpenBLAS all install


