kubectl exec -it kafka-1 -n cp-ldap -- kafka-console-consumer --bootstrap-server kafka-1:9093 --topic test-topic --consumer.config=/etc/kafka/alice.properties --from-beginning
