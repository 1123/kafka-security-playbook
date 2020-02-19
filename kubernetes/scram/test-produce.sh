#!/bin/bash 

set -e -u

kubectl exec kafka -- \
  kafka-producer-perf-test \
    --record-size 150 \
    --throughput -10 \
    --num-records 10 \
    --producer-props bootstrap.servers=kafka:9093 \
    --topic test \
    --producer.config /etc/kafka/consumer.properties
