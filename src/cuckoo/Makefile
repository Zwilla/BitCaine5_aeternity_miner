.POSIX:
.SUFFIXES:



# mycommand="./mean29-generic -h R4nNmL0Xjir09QswGFtqc7wwyuk10OfI23OlwznvsAw=yYJP/pjF9b8= -n 137 -t 483 -r -1"
# perf record  $mycommand 1
# sudo perf report
# sudo mpiexec -demux select -f /nfs/hosts -n 3 perf record --no-buffering --count=10 --freq=2249 --quiet --no-samples --no-buildid --no-buildid-cache -e cycles ./mean29-generic -h PfNTPRoCf+EOLNMQSEu7IP0oHZbz2MmN74kj7pMMQ5c=J/R5YAGZZzk= -n 0 -t 483 -r -1

# -r --exclude-perf --dry-run
# perf record --dry-run -e can act as a BPF script compiler if llvm.dump-obj in config file is set to true.
# perf mem -e cycles ./mean29-generic -h PfNTPRoCf+EOLNMQSEu7IP0oHZbz2MmN74kj7pMMQ5c=J/R5YAGZZzk= -n 0 -t 483 -r -1
OPT ?= -Os -fprefetch-loop-arrays  -freorder-blocks-algorithm=stc -ffast-math \
-fbranch-count-reg \
-fif-conversion  -fif-conversion2  \
-finline-functions-called-once \
-fmove-loop-invariants  -fssa-phiopt \
-ftree-bit-ccp  -ftree-pta  -ftree-sra \
-fgcse-las -faggressive-loop-optimizations -fdeclone-ctor-dtor -fdelete-null-pointer-checks  -fno-lifetime-dse \
-flive-range-shrinkage -fira-algorithm=priority -fira-region=all -fira-hoist-pressure -fno-sched-interblock  -fno-sched-spec -fsched2-use-superblocks \
-freschedule-modulo-scheduled-loops -fsel-sched-pipelining -fno-semantic-interposition -fipa-pta -floop-nest-optimize \
-floop-nest-optimize -floop-parallelize-all  -ftree-loop-distribution -ftree-loop-im -funswitch-loops -ftree-loop-ivcanon -fivopts \
-ftree-parallelize-loops=80 -fsimd-cost-model=cheap -fsplit-ivs-in-unroller -fvariable-expansion-in-unroller -fno-printf-return-value \
-Wformat-overflow -Wformat-truncation -fstrict-aliasing

# -flto-partition=none -flto-compression-level=9

#-fprofile-use -fprofile-use=perf.data

# -falign-functions  -falign-jumps -falign-labels  -falign-loops
#-fsched-pressure

# -fdevirtualize-speculatively

# -fno-ira-share-spill-slots -fno-ira-share-save-slots

# -fira-loop-pressure

# -flifetime-dse=2

#-fdevirtualize-at-ltrans # slower

#-fstack-protector-explicit

GCC_ARCH_FLAGS ?= -march=native
GPP_ARCH_FLAGS ?= -march=native

# -Wno-deprecated-declarations shuts up Apple OSX clang
FLAGS ?= -Wall -Wno-format -Wno-deprecated-declarations -D_POSIX_C_SOURCE=200112L $(OPT) -DPREFETCH -I. $(CPPFLAGS) -pthread

#GPP ?= mpic++ $(GPP_ARCH_FLAGS) -std=c++11 $(FLAGS)

#GPP ?= gcc $(GPP_ARCH_FLAGS) $(FLAGS)

GPP ?= g++ $(GPP_ARCH_FLAGS) -std=c++11 $(FLAGS)

CFLAGS ?= -Wall -Wno-format -fomit-frame-pointer $(OPT)
GCC ?= gcc $(GCC_ARCH_FLAGS) -std=gnu11 $(CFLAGS)
BLAKE_2B_SRC ?= ../crypto/blake2b-ref.c
LIBS = -L. -lblake2b

# 2 to 5 Problem
# time ./cuda29_generic_64 -h 324D6F373754576B3546684B772F493865493343416B71497531492B624A4B6155567A6543424B3278414D3D -n 18335313330172576564 -r 120 -g

#cuda specific
#all:  cuda29_generic_64
all: cuda29_generic_64 cuda29_generic_test cuda29_generic_orig cuda29-generic cuda29_GTX_970 cuda29_GTX_980 cuda29_GTX_1030 cuda29_GTX_1050 cuda29_GTX_1060 cuda29_GTX_1070 cuda29_GTX_1080 cuda29_GTX_2080 cuda29_GTX_titan

# strip -s cuda29_generic_64 && strip -s cuda29_generic_test && strip -s cuda29_generic_orig && strip -s cuda29-generic && strip -s cuda29_GTX_970 && strip -s cuda29_GTX_980 && strip -s cuda29_GTX_1030 && strip -s cuda29_GTX_1050 && strip -s cuda29_GTX_1060 && strip -s cuda29_GTX_1070 && strip -s cuda29_GTX_1080 && strip -s cuda29_GTX_2080 && strip -s cuda29_GTX_titan

#32_bit apps only works on 32 bit systems
#all :  cuda29-mean_sm70_32 cuda29-mean_sm60_32 cuda29-mean_sm50_32 cuda29-mean_sm35_32

#cuda29 lcuda29 mean29-generic
#all :  simpletest leantest  mean29-generic mean29x1_test verify30 mean29-generic lean29-generic verify30

simpletest:     simple19
	./simple19 -n 38

leantest:       lean19
	./lean19 -n 38

mean29x1_test: mean29x1_p1

verify30:	../crypto/siphash.h cuckoo.h cuckoo.c Makefile
	$(GCC) -o $@ -DEDGEBITS=29 cuckoo.c $(BLAKE_2B_SRC)

simple19:	../crypto/siphash.h cuckoo.h cyclebase.hpp simple.cpp Makefile
	$(GPP) -o $@ -DIDXSHIFT=0 -DPROOFSIZE=42 -DEDGEBITS=19 simple.cpp $(BLAKE_2B_SRC)

mean29-generic: cuckoo.h ../crypto/siphash.h mean.hpp mean.cpp Makefile
	$(GPP) -o $@ -mno-avx2 -DSAVEEDGES -DNSIPHASH=1 -DEDGEBITS=29 mean.cpp $(BLAKE_2B_SRC)

lean29-generic: cuckoo.h ../crypto/siphash.h lean.hpp lean.cpp Makefile
	$(GPP) -o $@ -mno-avx2 -DATOMIC -DEDGEBITS=29 lean.cpp $(BLAKE_2B_SRC)

simple29:	../crypto/siphash.h cuckoo.h cyclebase.hpp simple.cpp Makefile
	$(GPP) -o $@ -DIDXSHIFT=0 -DPROOFSIZE=42 -DEDGEBITS=29 simple.cpp $(BLAKE_2B_SRC)

lean19:		../crypto/siphash.h cuckoo.h  lean.cpp Makefile
	$(GPP) -o $@ -DATOMIC -DEDGEBITS=19 lean.cpp $(BLAKE_2B_SRC)

lean29x8:	../crypto/siphash.h cuckoo.h  lean.cpp Makefile
	$(GPP) -o $@ -mavx2 -DNSIPHASH=8 -DATOMIC -DEDGEBITS=29 lean.cpp $(BLAKE_2B_SRC)

mean19x8:	cuckoo.h ../crypto/siphash.h mean.hpp mean.cpp Makefile
	$(GPP) -o $@ -mavx2 -DXBITS=2 -DNSIPHASH=8 -DEDGEBITS=19 mean.cpp $(BLAKE_2B_SRC)

mean29x4:	cuckoo.h ../crypto/siphash.h mean.hpp mean.cpp Makefile
	$(GPP) -o $@ -mno-avx2 -DNSIPHASH=4 -DEDGEBITS=29 mean.cpp $(BLAKE_2B_SRC)

mean29x8:	cuckoo.h ../crypto/siphash.h mean.hpp mean.cpp Makefile
	$(GPP) -o $@ -mavx2 -DNSIPHASH=8 -DEDGEBITS=29 mean.cpp $(BLAKE_2B_SRC)

mean29x1:	cuckoo.h ../crypto/siphash.h mean.hpp mean.cpp Makefile
	$(GPP) -o $@ -DNSIPHASH=1 -DEDGEBITS=29 mean.cpp $(BLAKE_2B_SRC)

mean29x1_p1:	cuckoo.h ../crypto/siphash.h mean.hpp mean.cpp Makefile
	$(GPP) -o $@ -DNSIPHASH=1 -DPROOFSIZE=1 -DEDGEBITS=29 mean.cpp $(BLAKE_2B_SRC)

lcuda29:	../crypto/siphash.cuh lean.cu Makefile
	nvcc -o $@ -DEDGEBITS=29 -arch sm_35 lean.cu $(BLAKE_2B_SRC)

cuda29_orig:		../crypto/siphash.cuh mean.cu Makefile
	nvcc -o $@ -DEDGEBITS=29 -arch sm_35 mean.cu $(BLAKE_2B_SRC)


#64_bit apps
#all :  cuda29-mean_sm75 cuda29-mean_sm72 cuda29-mean_sm70 cuda29-mean_sm60 cuda29-mean_sm50 cuda29-mean_sm35

# 64 Bit
# -arch sm_75
cuda29-mean_sm75:		../crypto/siphash.cuh mean.cu Makefile
	nvcc mean.cu $(BLAKE_2B_SRC) -gencode arch=compute_75,code=sm_75 --verbose -m64 -DEDGEBITS=29 -o $@

# -arch sm_72
cuda29-mean_sm72:		../crypto/siphash.cuh mean.cu Makefile
	nvcc mean.cu $(BLAKE_2B_SRC) -gencode arch=compute_72,code=sm_72 --verbose -m64 -DEDGEBITS=29 -o $@

# -arch sm_70
cuda29-mean_sm70:		../crypto/siphash.cuh mean.cu Makefile
	nvcc mean.cu $(BLAKE_2B_SRC) -gencode arch=compute_70,code=sm_70 --verbose -m64 -DEDGEBITS=29 -o $@

# -arch sm_60
cuda29-mean_sm60:		../crypto/siphash.cuh mean.cu Makefile
	nvcc mean.cu $(BLAKE_2B_SRC) -gencode arch=compute_60,code=sm_60 --verbose -m64 -DEDGEBITS=29 -o $@

# -arch sm_50
cuda29-mean_sm50:		../crypto/siphash.cuh mean.cu Makefile
	nvcc mean.cu $(BLAKE_2B_SRC) -gencode arch=compute_50,code=sm_50 --verbose -m64 -DEDGEBITS=29 -o $@

# -arch sm_35
cuda29-mean_sm35:		../crypto/siphash.cuh mean.cu Makefile
	nvcc -std=c++11 --verbose -m64 --use_fast_math -arch sm_35 mean.cu $(BLAKE_2B_SRC) -DEDGEBITS=29 -o $@


BUILD_INFO= -D__BUILD_VERSION=\"$@\" -D__BUILD_DATE=\"$$(date +'%Y%m%d-%H:%M:%S')\" -D__BUILD_BY=\"zwilla\" -D__BUILD_SHA=\"e99ea684f258c053f2bda842ddef176696ed0d87e22e9ee2e17469e76f94a231\"


#Driver specific
# -arch sm_35
cuda29_generic:		../crypto/siphash.cuh mean.cu Makefile
	nvcc mean.cu $(BLAKE_2B_SRC) -arch sm_35 --verbose -m64 -DEDGEBITS=29 -o $@ $(BUILD_INFO)

cuda29_generic_orig:		../crypto/siphash.cuh mean_orig.cu Makefile
	nvcc mean_orig.cu $(BLAKE_2B_SRC) -arch sm_35 --verbose -m64 -DEDGEBITS=29 -o $@ $(BUILD_INFO)

cuda29_generic_test:		../crypto/siphash.cuh mean.cu Makefile
	nvcc mean.cu $(BLAKE_2B_SRC) -arch sm_61 --verbose -m64 -DEDGEBITS=29 -o $@ $(BUILD_INFO)

cuda29_generic_64:		../crypto/siphash.cuh mean64.cu Makefile
	nvcc mean64.cu $(BLAKE_2B_SRC) -arch sm_61 --verbose -m64 -DEDGEBITS=29 -o $@ $(BUILD_INFO)

cuda29_GTX_970:		../crypto/siphash.cuh mean.cu Makefile
	nvcc mean.cu $(BLAKE_2B_SRC) -arch sm_61 --verbose -m64 -DEDGEBITS=29 -o $@ $(BUILD_INFO)

cuda29_GTX_980:		../crypto/siphash.cuh mean.cu Makefile
	nvcc mean.cu $(BLAKE_2B_SRC) -arch sm_61 --verbose -m64 -DEDGEBITS=29 -o $@ $(BUILD_INFO)

cuda29_GTX_1030:		../crypto/siphash.cuh mean.cu Makefile
	nvcc mean.cu $(BLAKE_2B_SRC) -arch sm_61 --verbose -m64 -DEDGEBITS=29 -o $@ $(BUILD_INFO)

cuda29_GTX_1050:		../crypto/siphash.cuh mean.cu Makefile
	nvcc mean.cu $(BLAKE_2B_SRC) -arch sm_61 --verbose -m64 -DEDGEBITS=29 -o $@ $(BUILD_INFO)

cuda29_GTX_1060:		../crypto/siphash.cuh mean.cu Makefile
	nvcc mean.cu $(BLAKE_2B_SRC) -arch sm_61 --verbose -m64 -DEDGEBITS=29 -o $@ $(BUILD_INFO)

cuda29_GTX_1070:		../crypto/siphash.cuh mean.cu Makefile
	nvcc mean.cu $(BLAKE_2B_SRC) -arch sm_61 --verbose -m64 -DEDGEBITS=29 -o $@ $(BUILD_INFO)

cuda29_GTX_1080:		../crypto/siphash.cuh mean.cu Makefile
	nvcc mean.cu $(BLAKE_2B_SRC) -arch sm_61 --verbose -m64 -DEDGEBITS=29 -o $@ $(BUILD_INFO)

cuda29_GTX_2080:		../crypto/siphash.cuh mean.cu Makefile
	nvcc mean.cu $(BLAKE_2B_SRC) -arch sm_61 --verbose -m64 -DEDGEBITS=29 -o $@ $(BUILD_INFO)

cuda29_GTX_titan:		../crypto/siphash.cuh mean.cu Makefile
	nvcc mean.cu $(BLAKE_2B_SRC) -arch sm_61 --verbose -m64 -DEDGEBITS=29 -o $@ $(BUILD_INFO)


#32 Bit
# -arch sm_70
cuda29-mean_sm70_32:		../crypto/siphash.cuh mean.cu Makefile
	nvcc mean.cu $(BLAKE_2B_SRC) -gencode arch=compute_70,code=sm_70 --verbose -m32 -DEDGEBITS=29 -o $@

# -arch sm_60
cuda29-mean_sm60_32:		../crypto/siphash.cuh mean.cu Makefile
	nvcc mean.cu $(BLAKE_2B_SRC) -gencode arch=compute_60,code=sm_60 --verbose -m32 -DEDGEBITS=29 -o $@

# -arch sm_50
cuda29-mean_sm50_32:		../crypto/siphash.cuh mean.cu Makefile
	nvcc mean.cu $(BLAKE_2B_SRC) -gencode arch=compute_50,code=sm_50 --verbose -m32 -DEDGEBITS=29 -o $@

# -arch sm_35
cuda29-mean_sm35_32:		../crypto/siphash.cuh mean.cu Makefile
	nvcc -std=c++11 --verbose -m32 --use_fast_math -arch sm_35 mean.cu $(BLAKE_2B_SRC) -DEDGEBITS=29 -o $@

#'sm_20', 'sm_21', 'sm_30', 'sm_32', 'sm_35', 'sm_37', 'sm_50', 'sm_52', 'sm_53' 'sm_60', 'sm_61', 'sm_62', 'sm_70', 'sm_72', 'sm_75'.
