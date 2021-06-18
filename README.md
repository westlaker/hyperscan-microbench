# hyperscan-microbench

# run build.sh just once
./build.sh

# then run the microbench here
./run_bench.sh

*** Snort literals against HTTP traffic, block mode.

Signatures:        pcre/snort_literals
Hyperscan info:    Version: 5.4.2 Features:  Mode: BLOCK
Expression count:  3116
Bytecode size:     921592 bytes
Database CRC:      0xe52f3247
Scratch size:      5183 bytes
Compile time:      0.125 seconds
Peak heap usage:   196804608 bytes

Time spent scanning:       6.856 seconds
Corpus size:               177087567 bytes (130957 blocks)
Matches per iteration:     637380 (3.686 matches/kilobyte)
Overall block rate:        382015.57 blocks/sec
Mean throughput (overall): 4132.67 Mbit/sec
Max throughput (per core): 4192.65 Mbit/sec


*** Snort PCREs against HTTP traffic, block mode.

Signatures:        pcre/snort_pcres
Hyperscan info:    Version: 5.4.2 Features:  Mode: BLOCK
Expression count:  847
Bytecode size:     2018136 bytes
Database CRC:      0x1f476c7d
Scratch size:      101775 bytes
Compile time:      2.309 seconds
Peak heap usage:   208470016 bytes

Time spent scanning:       22.736 seconds
Corpus size:               177087567 bytes (130957 blocks)
Matches per iteration:     1522622 (8.804 matches/kilobyte)
Overall block rate:        115197.67 blocks/sec
Mean throughput (overall): 1246.22 Mbit/sec
Max throughput (per core): 1266.54 Mbit/sec



*** Teakettle synthetic patterns against Gutenberg text, streaming mode.

Signatures:        pcre/teakettle_2500
Hyperscan info:    Version: 5.4.2 Features:  Mode: STREAM
Expression count:  2500
Bytecode size:     2749488 bytes
Database CRC:      0x6de12c44
Stream state size: 2250 bytes
Scratch size:      143320 bytes
Compile time:      1.914 seconds
Peak heap usage:   34304000 bytes

Time spent scanning:       0.331 seconds
Corpus size:               6701044 bytes (3280 blocks in 653 streams)
Matches per iteration:     3779 (0.577 matches/kilobyte)
Overall block rate:        197922.12 blocks/sec
Mean throughput (overall): 3234.84 Mbit/sec
Max throughput (per core): 3244.14 Mbit/sec



*** Pcapscan syntehic patterns agains ixia pcap.

Pattern file: pcap/pat1633i
Compiling Hyperscan databases with 1633 patterns.
Hyperscan streaming mode database compiled in 0.0644723 seconds.
Hyperscan block mode database compiled in 0.0499928 seconds.
PCAP input file: pcap/ixhttp44k.pcap
60835 packets in 3408 streams, totalling 83686037 bytes.
Average packet length: 1375 bytes.
Average stream length: 24555 bytes.

Streaming mode Hyperscan database size    : 361520 bytes.
Block mode Hyperscan database size        : 306928 bytes.
Streaming mode Hyperscan stream state size: 95 bytes (per stream).

Streaming mode:

  Total matches: 22156
  Match rate:    0.2711 matches/kilobyte
  Throughput (with stream overhead): 10213.08 megabits/sec
  Throughput (no stream overhead):   10324.94 megabits/sec

Block mode:

  Total matches: 22156
  Match rate:    0.2711 matches/kilobyte
  Throughput:    11092.90 megabits/sec



