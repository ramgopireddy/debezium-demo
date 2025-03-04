oc create secret generic oracle-user --from-literal username=demo --from-literal password=demo


oc exec -n <project>  -it <kafka-cluster> -- /opt/kafka/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --from-beginning --property print.key=true --topic=<topic-name>