#!/bin/bash

#create timestamp
TIMESTAMP=$(date -d "today" +"%H:%M_%d-%m-%Y")

#switch to the root directory of the YCSB
cd ../../
bin/ycsb run couchbase2 -s -P workloads/workloadb -P couchbase2/conf/couchbase.properties > $HOME/workloadB_${TIMESTAMP}.dat 2>&1