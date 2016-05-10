#!/bin/bash 
TIMESTAMP=$(date -d "today" +"%H:%M_%d-%m-%Y")

cd ~/YCSB

bin/ycsb load mongodb -s -P workloads/workloada -p mongodb.url="mongodb://192.168.0.73:27017/ycsb?w=1" > $HOME/loadMongodb_${TIMESTAMP}.txt 2>&1
