kubectl get pvc | awk '{print "kubectl delete pvc "$1}'|sh
