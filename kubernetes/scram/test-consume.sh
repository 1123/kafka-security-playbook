kubectl exec kafka -- \
  kafka-console-consumer \
    --bootstrap-server kafka:9093 \
    --consumer.config /etc/kafka/consumer.properties \
    --topic test \
    --from-beginning \
    --max-messages 10
