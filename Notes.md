./broker-list.sh

./start-kafka-shell.sh 192.168.160.161 2181

bootstrap-server == 192.168.160.161 [broker port]


./start-kafka-shell.sh 192.168.160.161 2181

$KAFKA_HOME/bin/kafka-topics.sh --create --topic topic \
    --partitions 4 
    --zookeeper $ZK 
    --replication-factor 2


$KAFKA_HOME/bin/kafka-console-producer.sh --broker-list 192.168.160.161:32780 --topic sample_topic

$KAFKA_HOME/bin/kafka-console-consumer.sh --bootstrap-server 192.168.160.161:32780 --topic sample_topic