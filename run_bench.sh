#!/bin/sh -e

# Script to run Hyperscan performance measurements. Pass in the path to your
# `hsbench` binary as an argument.

#if [ $# -ne 1 ]; then
#    echo "Usage: ./run_bench.sh <hsbench and pcapsan directory>"
#    exit 1
#fi

#HSBENCH_BIN=$1

#if [ ! -e ${HSBENCH_BIN} ]; then
#    echo "Can't find hsbench binary: ${HSBENCH_BIN}"
#    exit 1
#fi

BIN_PATH=`pwd`
export PATH=$PATH:$BIN_PATH/vectorscan/build/bin/

echo "\n*** Snort literals against HTTP traffic, block mode.\n"
#taskset 1 ${HSBENCH_BIN}/hsbench -e pcre/snort_literals -c corpora/alexa200.db -N
taskset 1 hsbench -e pcre/snort_literals -c corpora/alexa200.db -N

echo "\n*** Snort PCREs against HTTP traffic, block mode.\n"
#taskset 1 ${HSBENCH_BIN}/hsbench -e pcre/snort_pcres -c corpora/alexa200.db -N
taskset 1 hsbench -e pcre/snort_pcres -c corpora/alexa200.db -N
echo

echo "\n*** Teakettle synthetic patterns against Gutenberg text, streaming mode.\n"
#taskset 1 ${HSBENCH_BIN}/hsbench -e pcre/teakettle_2500 -c corpora/gutenberg.db
taskset 1 hsbench -e pcre/teakettle_2500 -c corpora/gutenberg.db
echo

echo "\n*** Pcapscan syntehic patterns agains ixia pcap.\n"
#taskset 1 ${HSBENCH_BIN}/pcapscan pcap/pat1633i pcap/ixhttp44k.pcap 
taskset 1 pcapscan pcap/pat1633i pcap/ixhttp44k.pcap 
echo


