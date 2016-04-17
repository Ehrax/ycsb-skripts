#!/bin/bash 
TIMESTAMP=$(date -d "today" +"%H:%M_%d-%m-%Y")

cd ~/YCSB

bin/ycsb load mongodb-async -s -P workloads/workloadb -p mongodb.url="mongodb://134.60.64.243:27017/ycsb?w=0" > $HOME/loadMongodb_${TIMESTAMP}.txt 2>&1
