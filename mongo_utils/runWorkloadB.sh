#!/bin/bash 
TIMESTAMP=$(date -d "today" +"%H:%M_%d-%m-%Y")

cd ~/YCSB

bin/ycsb run mongodb-async -s -P workloads/workloadb -p mongodb.url="mongodb://134.60.64.158:27017/ycsb?w=1" > $HOME/runMongodb_workloadB_${TIMESTAMP}.txt 2>&1
