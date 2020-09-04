# delete pod all
for index in $(seq -w 0 22)
do
  kubectl delete deployment "user"${index}"-consumer"
  kubectl delete deployment "user"${index}"-consumer-other"
done

# delete database
kubectl delete deployment postgres
kubectl delete svc postgres
kubectl delete deployment postgres-legacy
kubectl delete svc postgres-legacy
kubectl delete deployment mysql
kubectl delete svc mysql

# delete kafka-producer
kubectl delete deployment kafka-producer
kubectl delete svc kafka-producer

# delete kafka connect
kubectl delete deployment kafka-connect
kubectl delete svc kafka-connect

# delete schema-registry
helm del my-schema --purge

# kafka
helm del kafka --purge

# kafka-manager
helm del kafka-manager --purge
