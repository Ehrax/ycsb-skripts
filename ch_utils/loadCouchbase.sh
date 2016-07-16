#!/bin/bash

#create timestamp
TIMESTAMP=$(date -d "today" +"%H:%M_%d-%m-%Y")

#switch to the root directory of the YCSB
cd ../../
bin/ycsb load couchbase2 -s -P workloads/workloada -P couchbase2/conf/couchbase.properties > $HOME/load_${TIMESTAMP}.dat 2>&1
