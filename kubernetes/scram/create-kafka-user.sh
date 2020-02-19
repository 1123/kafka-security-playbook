#!/bin/bash 

set -u -e

kubectl exec kafka -- \
  kafka-configs --zookeeper zookeeper:2181 \
    --alter \
    --add-config 'SCRAM-SHA-256=[password=kafka],SCRAM-SHA-512=[password=kafka]'\
    --entity-type users \
    --entity-name kafka
