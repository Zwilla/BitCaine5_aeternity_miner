## Example for lazy people:
which have no time to build

cd into the directory where you have your binary, then



```
FILENAME="cuda29_GTX_1080"
wget https://raw.githubusercontent.com/Zwilla/BitCaine5_aeternity_miner/master/binaries/$FILENAME
mv cuda29 cuda29_old
mv $FILENAME cuda29
```

you can do it on the fly without restarting your node, just replace the binary


donations are welcome: ak_XoongvC5xDqBCwdLr3ok1SzK3xEMFVwQ1sA7vj1guBd99HFjQ

### epoch.yaml  example

```
mining:
    autostart: true
    beneficiary: "ak_0000000000000000YOUR_KEY0000000"
    cuckoo:
        miner:
            executable: cuda29_GTX_1070
            repeats: 600
            extra_args: ""
            instances: 2
            edge_bits: 29
            hex_encoded_header: true
            
```

### options
* extra_args: "-g" prints usual output, not only the solution
* extra_args: "-c" same as tromps setting (cpu blocking) but performs very bad

### app -s
```
SYNOPSIS
  cuda30 [-d device] [-E 0-2] [-h hexheader] [-m trims] [-n nonce] [-r range] [-U seedAblocks] [-u seedAthreads] [-v seedBthreads] [-w Trimthreads] [-y Tailthreads] [-Z recoverblocks] [-z recoverthreads] [-g debug] [-c cpu none blocking]
DEFAULTS
  cuda30 -d 0 -E 0 -h "" -m 176 -n 0 -r 1 -U 4096 -u 256 -v 128 -w 512 -y 1024 -Z 1024 -z 1024
Build version  : cuda29_GTX_970 by zwilla source_sha256: 1cbfbc7ce3b75a1248b00016663f2084d4fedc8579987a5e5225849dee8e4111
Build date: 20181211
```
## WARNING!!! TEST YOUR DRIVER BEFORE RUNNING HOURS
Example:
```
zwilla@master-node1:~/ae_cuckoo/src/cuckoo$ ./cuda29_generic_test -g
GeForce GTX 1070 Ti with 8119MB @ 256 bits x 4004MHz
Looking for 42-cycle on cuckoo30("",0) with 50% edges, 64*64 buckets, 176 trims, and 64 thread blocks.
Using 6976MB of global memory.
nonce 0 k0 k1 k2 k3 a34c6a2bdaa03a14 d736650ae53eee9e 9a22f05e3bffed5e b8d55478fa3a606d
   **2-cycle found**
  **30-cycle found**
 **754-cycle found**
findcycles edges 63447 time 24 ms total 367 ms
0 total solutions with 1 nonces
```
IF YOU DO NOT HAVE A SIMILAR OUTPUT xxx-cycle found then you have to update or change to an other driver



