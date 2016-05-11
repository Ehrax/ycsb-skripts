#!/bin/bash 
TIMESTAMP=$(date -d "today" +"%H:%M_%d-%m-%Y")

cd ~/YCSB

bin/ycsb run mongodb -s -P workloads/workloada -p mongodb.url="mongodb://192.168.0.89:27017/ycsb?w=1" > $HOME/runMongodb_workloadA_${TIMESTAMP}.txt 2>&1
