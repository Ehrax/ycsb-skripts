#!/bin/bash 
TIMESTAMP=$(date -d "today" +"%H:%M_%d-%m-%Y")

cd ~/YCSB

bin/ycsb load couchbase2 -s -P workloads/workloada -P couchbase2/conf/couchbase.properties > $HOME/loadCouchbase__${TIMESTAMP}.txt 2>&1
