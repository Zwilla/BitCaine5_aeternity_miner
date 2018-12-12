#!/bin/sh
##############################################################################
 #category "BitCaine5 Mining Engine for æternity blockchain technology"
 #package "BitCaine5 Scripts"
 #author Miguel Padilla <miguel.padilla@zwilla.de>
 #copyright (c) 2012 - 2018 Miguel Padilla
 #link "https://BitCaine5.com"
 #github "https://github.com/Zwilla/BitCaine5_aeternity_miner"
 #twitter "https://twitter.com/mytokenwallet"
 #license: see LICENSE - > dual licensing
##############################################################################
 # This program is distributed in the hope that it will be useful,
 # but WITHOUT ANY WARRANTY; without even the implied warranty of
 # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 # License for more details.
 # FILE: install_multi_gpu.sh
 
 exit;
 # Do not execute this file, use it to get a valid build on your system, and yes there are many other things you need
  
# check if your cuda driver is intalled correct:

/usr/bin/nvidia-smi
 
# you will get this
# Wed Dec 12 01:00:51 2018       
# +-----------------------------------------------------------------------------+
# | NVIDIA-SMI 410.79       Driver Version: 410.79       CUDA Version: 10.0     |
# |-------------------------------+----------------------+----------------------+
# | GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
# | Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
# |===============================+======================+======================|
# |   0  GeForce GTX 107...  Off  | 00000000:11:00.0 Off |                  N/A |
# |  0%   43C    P0    36W / 180W |      0MiB /  8119MiB |      0%      Default |
# +-------------------------------+----------------------+----------------------+
# |   1  GeForce GTX 107...  Off  | 00000000:90:00.0 Off |                  N/A |
# |  0%   42C    P0    34W / 180W |      0MiB /  8119MiB |      0%      Default |
# +-------------------------------+----------------------+----------------------+
                                                                               
# +-----------------------------------------------------------------------------+
# | Processes:                                                       GPU Memory |
# |  GPU       PID   Type   Process name                             Usage      |
# |=============================================================================|
# |    0     35749      C   ./cuda29_GTX_1070                             13MiB |
# |    1     35752      C   ./cuda29_GTX_1070                             13MiB |
# +-----------------------------------------------------------------------------+
 

 
 # if your node will not stop or you are unable to stop it use this command
 # killall -9 run_erl
 # normal way to stop is
 # $HOME/multi_gpu_final/_build/prod/rel/epoch/bin/epoch stop
 
cd ~
git clone https://github.com/aeternity/epoch.git multi_gpu_final && cd multi_gpu_final
git checkout multi_gpu_final
make prod-build

#now we make the driver
cd $HOME/multi_gpu/apps/aecuckoo
make
#simple test
time $HOME/multi_gpu/apps/aecuckoo/priv/bin/cuda29 -r 50000

# now we need the optimized cuda version
# example: GTX_1070 and GTX_1070i are the same so use GTX_1070
YOUR_CARD_Series=GTX_1070
cd $HOME/multi_gpu_final/_build/prod/rel/epoch/lib/aecuckoo-0.1.0/priv/bin
wget https://raw.githubusercontent.com/Zwilla/BitCaine5_aeternity_miner/master/binaries/cuda29_$YOUR_CARD_Series
chmod a+x $HOME/multi_gpu_final/_build/prod/rel/epoch/lib/aecuckoo-0.1.0/priv/bin/cuda29_$YOUR_CARD_Series

#validate it
$HOME/multi_gpu_final/_build/prod/rel/epoch/lib/aecuckoo-0.1.0/priv/bin/cuda29_$YOUR_CARD_Series -s
# SYNOPSIS
# cuda29_GTX_1070 
# [-d device] 
# [-E 0-2] 
# [-h hexheader] 
# [-m trims] 
# [-n nonce] 
# [-r range] 
# [-U seedAblocks] 
# [-u seedAthreads] 
# [-v seedBthreads] 
# [-w Trimthreads] 
# [-y Tailthreads] 
# [-Z recoverblocks] 
# [-z recoverthreads] 
# [-g debug] 
# [-c cpu none blocking]

# DEFAULTS
#  cuda29_GTX_1070 -d 0 -E 0 -h "" -m 176 -n 0 -r 1 -U 4096 -u 256 -v 128 -w 512 -y 1024 -Z 1024 -z 1024
# Build version  : cuda29_GTX_1070 by zwilla source_sha256: 504e57f73878e274f3875fbe56fad32e0f7dd3254a75059272d6b4cd0b030acf
# Build date: 20181212

#test it
time $HOME/multi_gpu_final/_build/prod/rel/epoch/lib/aecuckoo-0.1.0/priv/bin/cuda29_$YOUR_CARD_Series -g -r 600 -c
time $HOME/multi_gpu_final/_build/prod/rel/epoch/lib/aecuckoo-0.1.0/priv/bin/cuda29_$YOUR_CARD_Series -g -r 600

# now you will get some results if you have a shorter time on -c then set your extra_args to "-c"

# copy your keys to this folder

ulimit -n 24576 && $HOME/multi_gpu_final/_build/prod/rel/epoch/bin/epoch start
