## Example for lazy people:
which have no time to build

cd into the directory where you have your binary, then



```
FILENAME="cuda29_GTX_1080"
wget 
https://github.com/Zwilla/BitCaine5_aeternity_miner/raw/master/binaries/$FILENAME
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



