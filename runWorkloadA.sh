#!/bin/bash 
TIMESTAMP=$(date -d "today" +"%H:%M_%d-%m-%Y")

cd ~/YCSB

bin/ycsb run mongodb-async -s -P workloads/workloada -p mongodb.url="mongodb://134.60.64.243:27017/ycsb?w=0" > $HOME/runMongodb_${TIMESTAMP}.txt 2>&1
