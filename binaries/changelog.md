## Build Date and Time added into binaries
./cuda29_GTX_1070 -s

. . .

DEFAULTS
  ./cuda29_GTX_1070 -d 0 -E 0 -h "" -m 176 -n 0 -r 1 -U 4096 -u 256 -v 128 -w 512 -y 1024 -Z 1024 -z 1024
Build version  : cuda29_GTX_1070 by zwilla source_sha256: e99ea684f258c053f2bda842ddef176696ed0d87e22e9ee2e17469e76f94a231
Build date: 20181212-19:16:09

---

# Debug Mode reenabeled use -g at your extra_args: "-g" to see the output
* binaries updated

**Example without Debug mode:** (slower)
./cuda29_GTX_1070 -r 120 -h 324D6F373754576B3546684B772F493865493343416B71497531492B624A4B6155567A6543424B3278414D3D -n 18335313330172576564
Solution(fe741e54426bc345) 1406157 253890b 25caede 29f6a1d 2d981aa 31e596b 433e85c 6df4880 71e2c6c 80936e0 923bb91 94f0688 9838477 9d18eb8 9e11837 c0c997e cc7bf17 d235c3e d4ce55c d55c310 e05c39a e8f0a6c f4aa877 fc1364b 102028aa 12f4b651 13f38290 14a7724f 14aaa16f 15130716 17c36072 183de165 18b2d2ae 1ab0e11d 1af15642 1b00663b 1b149249 1e037d82 1e5e2580 1ec08efb 1ec584dd 1fea53bb
Solution(fe741e54426bc3a9) c15316 197817c 32bab3e 33dace8 4a0e47c 5ce2bdd 6c58999 94da3e2 992c1e1 9c79482 a3e6a5d b98452a bd1f19c c2c0be1 c85a493 cd107f3 e205020 ed3ccef 112d19b2 115386b7 119d35c4 1348e1ea 143cfc04 14487741 153c5b19 15407b7e 163bd23b 16a32c89 16ea3170 17d95218 19159e6b 1995a24d 1a77f7d9 1ace491e 1ae9de25 1bcee41c 1c5fb8b1 1cce89ce 1dcec3ac 1de2eea6 1eb82ffe 1efd3cf8
2 total solutions of 120 nonces

real	0m44.231s
user	0m24.681s
sys	  0m19.227s

**Example with Debug mode:** (faster)
Solution(fe741e54426bc3a9) c15316 197817c 32bab3e 33dace8 4a0e47c 5ce2bdd 6c58999 94da3e2 992c1e1 9c79482 a3e6a5d b98452a bd1f19c c2c0be1 c85a493 cd107f3 e205020 ed3ccef 112d19b2 115386b7 119d35c4 1348e1ea 143cfc04 14487741 153c5b19 15407b7e 163bd23b 16a32c89 16ea3170 17d95218 19159e6b 1995a24d 1a77f7d9 1ace491e 1ae9de25 1bcee41c 1c5fb8b1 1cce89ce 1dcec3ac 1de2eea6 1eb82ffe 1efd3cf8
Verified with cyclehash 368d2ab2220f12bc482db070e15eaca71493be3290bd66ed4750a1ec60b9e763
nonce 18335313330172576682 k0 k1 k2 k3 b4a41273c842792a 2118c0d57d6d4dae 766f9288dcf7945e ee8d443701cd5f1c
Seeding completed
   2-cycle found
  24-cycle found
  24-cycle found
 408-cycle found
 456-cycle found
findcycles edges 68233 time 21 ms total 347 ms
Time: 347 ms
nonce 18335313330172576683 k0 k1 k2 k3 a61f856e44931cac b34d3fe93b692c6e f318a26da07d49e8 444c48a3476ed103
Seeding completed
  14-cycle found
  12-cycle found
   6-cycle found
 536-cycle found
 420-cycle found
findcycles edges 64563 time 19 ms total 345 ms
Time: 345 ms
2 total solutions of 120 nonces

real	0m44.510s
user	0m24.635s
sys	0m19.556s

---

# Debug mode hard deactivated on last binaries
you will get just some lines like that:

<0.2010.13>@aec_pow_cuckoo:generate_int:203 Executing cmd: "./cuda29_GTX_1070 -h 324D6F373754576B3546684B772F493865493343416B71497531492B624A4B6155567A6543424B3278414D3D -n 18335313330172576564 -r 120 -g -d 1"
...
2018-12-12 14:27:15.201 [debug] <0.1778.13>@aec_pow_cuckoo:parse_generation_result:481 5 total solutions of 120 nonces

---

# will update new binaries next 20 mminutes
2018-12-12 14:27:14.482 [debug] <0.1774.13>@aec_pow_cuckoo:test_target:536 Hash of (<<50,193,194,157,209,166,90,131,129,57,17,212,40,148,210,142,51,65,92,57,135,75,227,54,116,253,165,127,199,18,189,211>>)
2018-12-12 14:27:14.483 [debug] <0.1774.13>@aec_pow_cuckoo:parse_generation_result:477 Failed to meet target (505185084)
2018-12-12 14:27:14.484 [debug] <0.1774.13>@aec_pow_cuckoo:test_target:536 Hash of (<<233,203,161,95,48,129,77,22,103,118,152,144,175,141,130,161,19,230,1,156,192,0,157,226,76,44,240,192,105,124,67,66>>)
2018-12-12 14:27:14.485 [debug] <0.1774.13>@aec_pow_cuckoo:parse_generation_result:477 Failed to meet target (505185084)
2018-12-12 14:27:14.486 [debug] <0.1774.13>@aec_pow_cuckoo:test_target:536 Hash of (<<14,43,169,90,164,250,19,182,8,98,121,46,3,247,136,238,98,140,255,135,15,163,227,247,205,109,160,169,186,227,96,68>>)
2018-12-12 14:27:14.486 [debug] <0.1774.13>@aec_pow_cuckoo:parse_generation_result:477 Failed to meet target (505185084)
2018-12-12 14:27:14.486 [debug] <0.1774.13>@aec_pow_cuckoo:parse_generation_result:481 3 total solutions of 120 nonces
2018-12-12 14:27:14.592 [debug] <0.1774.13>@aec_pow_cuckoo:generate:87 No cuckoo solution found
2018-12-12 14:27:14.636 [debug] <0.2010.13>@aec_pow_cuckoo:generate:81 Generating solution for data hash <<216,202,59,237,53,164,228,88,74,195,242,60,120,141,194,2,74,136,187,82,62,108,146,154,81,92,222,8,18,182,196,3>> and nonce 18335313330172576564 with target 505185084.
2018-12-12 14:27:14.639 [info] <0.2010.13>@aec_pow_cuckoo:generate_int:203 Executing cmd: "./cuda29_GTX_1070 -h 324D6F373754576B3546684B772F493865493343416B71497531492B624A4B6155567A6543424B3278414D3D -n 18335313330172576564 -r 120 -g -d 1"
2018-12-12 14:27:15.199 [debug] <0.1778.13>@aec_pow_cuckoo:test_target:536 Hash of (<<239,122,151,0,204,222,219,68,123,243,197,108,98,137,173,240,52,216,82,160,219,249,70,233,33,226,134,252,11,144,72,133>>)
2018-12-12 14:27:15.199 [debug] <0.1778.13>@aec_pow_cuckoo:parse_generation_result:477 Failed to meet target (505185084)
2018-12-12 14:27:15.199 [debug] <0.1778.13>@aec_pow_cuckoo:test_target:536 Hash of (<<196,96,151,217,70,156,239,57,184,34,223,16,168,108,35,243,217,252,41,186,237,169,110,235,140,21,125,108,146,212,34,107>>)
2018-12-12 14:27:15.199 [debug] <0.1778.13>@aec_pow_cuckoo:parse_generation_result:477 Failed to meet target (505185084)
2018-12-12 14:27:15.200 [debug] <0.1778.13>@aec_pow_cuckoo:test_target:536 Hash of (<<135,160,32,48,58,56,150,209,221,216,144,97,111,161,209,198,4,88,243,207,206,251,53,102,100,155,241,225,158,5,23,170>>)
2018-12-12 14:27:15.200 [debug] <0.1778.13>@aec_pow_cuckoo:parse_generation_result:477 Failed to meet target (505185084)
2018-12-12 14:27:15.200 [debug] <0.1778.13>@aec_pow_cuckoo:test_target:536 Hash of (<<100,160,217,214,170,197,14,58,56,55,127,171,122,72,216,119,180,35,169,209,48,185,109,155,77,57,176,106,170,98,234,82>>)
2018-12-12 14:27:15.200 [debug] <0.1778.13>@aec_pow_cuckoo:parse_generation_result:477 Failed to meet target (505185084)
2018-12-12 14:27:15.201 [debug] <0.1778.13>@aec_pow_cuckoo:test_target:536 Hash of (<<180,60,124,150,128,44,84,34,186,236,195,61,147,229,40,40,94,203,112,247,253,102,95,97,20,84,10,90,202,43,142,42>>)
2018-12-12 14:27:15.201 [debug] <0.1778.13>@aec_pow_cuckoo:parse_generation_result:477 Failed to meet target (505185084)
2018-12-12 14:27:15.201 [debug] <0.1778.13>@aec_pow_cuckoo:parse_generation_result:481 5 total solutions of 120 nonces
2018-12-12 14:27:15.454 [debug] <0.1778.13>@aec_pow_cuckoo:generate:87 No cuckoo solution found
