FROM confluentinc/cp-server:5.4.0

# 3. Configure Kafka and zookeeper for Kerberos
COPY server.properties /etc/kafka/server.properties
COPY server-with-ssl.properties /etc/kafka/server-with-ssl.properties
COPY kafka.jaas.config /etc/kafka/kafka_server_jaas.conf
COPY log4j.properties /etc/kafka/log4j.properties

COPY alice.properties /etc/kafka/alice.properties
COPY barnie.properties /etc/kafka/barnie.properties
COPY charlie.properties /etc/kafka/charlie.properties
COPY kafka.properties /etc/kafka/kafka-client.properties

