helm del my --purge
for i in {0..2}
do
  kubectl delete pvc datadir-0-my-cp-kafka-${i}
done

for i in {0..2}
do
  kubectl delete pvc datadir-my-cp-zookeeper-${i}
done
for i in {0..2}
do
  kubectl delete pvc datalogdir-my-cp-zookeeper-${i}
done

helm del my-schema --purge
helm del my-connect --purge
#helm del my-ksql --purge
# schema-registry
kubectl delete pvc datadir-schema-registry-kafka-0


