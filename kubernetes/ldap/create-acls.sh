kubectl exec zookeeper -n cp-ldap -- \
  kafka-acls \
    --authorizer-properties zookeeper.connect=zookeeper:2181 \
    --add --allow-principal User:kafka \
    --allow-host '*' \
    --cluster \
    --operation All
kubectl exec zookeeper -n cp-ldap -- \
  kafka-acls \
    --authorizer-properties zookeeper.connect=zookeeper:2181 \
    --add --allow-principal 'Group:Kafka Developers' \
    --allow-host '*' \
    --topic test-topic \
    --operation All
kubectl exec zookeeper -n cp-ldap -- \
  kafka-acls \
    --authorizer-properties zookeeper.connect=zookeeper:2181 \
    --add --allow-principal 'Group:Kafka Developers' \
    --allow-host '*' \
    --group '*' \
    --operation READ
    
