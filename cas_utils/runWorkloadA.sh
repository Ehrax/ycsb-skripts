#!/bin/bash 
TIMESTAMP=$(date -d "today" +"%H:%M_%d-%m-%Y")

cd ~/YCSB

bin/ycsb run cassandra2-cql -s -P workloads/workloada -P cassandra2/conf/cassandra.properties > $HOME/runCouch_${TIMESTAMP}.txt 2>&1

