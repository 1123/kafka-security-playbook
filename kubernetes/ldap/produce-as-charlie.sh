kubectl exec -it kafka-1 -- kafka-console-producer --broker-list kafka-1:9093 --topic test-topic --producer.config=/etc/kafka/charlie.properties
