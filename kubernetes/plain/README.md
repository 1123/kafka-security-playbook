### Kafka with SASL plain on Kubernetes


Log into the kafka container using kubectl 

    kubectl exec -it kafka -- /bin/bash

Execute the following commands to test producing and consuming from a test topic

    kafka-console-producer --broker-list kafka:9093 --producer.config /etc/kafka/consumer.properties --topic test
    kafka-console-consumer --bootstrap-server kafka:9093 --consumer.config /etc/kafka/consumer.properties --topic test --from-beginning
