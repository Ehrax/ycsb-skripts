#!/bin/bash

mvn -f ../../pom.xml -pl com.yahoo.ycsb:couchbase2-binding -am clean package -DskipTests