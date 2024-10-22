

## Kafka Cluster 설치

Kafka Cluster를 설치합니다.  
```bash
kubectl apply -f kafka-cluster.yaml
```

## Kafka Lab 

Kafka Lab을 위한 Configuration과 Kafka Producer를 설치합니다.

```bash
kubectl apply -f kafka-client.yaml

kubectl apply -f kafka-config.yaml

kubectl apply -f kafka-topic-config.yaml

kubectl apply -f kafka-producer.yaml

kubectl apply -f kafka-producer.yaml
```
