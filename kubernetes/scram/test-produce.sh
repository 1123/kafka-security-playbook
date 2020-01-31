kubectl exec kafka -- kafka-producer-perf-test --record-size 150 --throughput -10 --num-records 10 --producer-props bootstrap.servers=kafka:9093 --topic test --producer.config /etc/kafka/consumer.properties
# kubectl exec kafka -- echo "message-1" | kafka-console-producer --broker-list kafka:9093 --producer.config /etc/kafka/consumer.properties --topic test
