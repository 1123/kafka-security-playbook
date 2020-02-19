kubectl exec -it kafka-1 -n cp-ldap -- kafka-console-producer --broker-list kafka-1:9093 --topic test-topic --producer.config=/etc/kafka/barnie.properties
