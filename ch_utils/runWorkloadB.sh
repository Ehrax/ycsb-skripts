#!/bin/bash 
TIMESTAMP=$(date -d "today" +"%H:%M_%d-%m-%Y")

cd ~/YCSB

bin/ycsb run couchbase2 -s -P workloads/workloadb -P couchbase2/conf/couchbase.properties > $HOME/runCouch${TIMESTAMP}.dat 2>&1
