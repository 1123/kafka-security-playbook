### Kafka with SASL plain on Kubernetes

This directory contains an example for deploying Confluent Kafka 5.4 with SASL Plain authentication configured to a Kubernetes cluster.

#### Prerequisites

1. kubectl logged into a kubernetes cluster with approximately 8GB of memory. 

1. A container registry that you can use to upload your images to. 

#### Build and Deploy

1. Build the images and deploy them to a container registry, that your cluster has access to. 
   This example uses Google Container Registry for storing the images and Google Cloud Build for building and deploying the images. This is automated by the `build.sh` script:
   
       gcloud builds submit --tag gcr.io/${PROJECT}/kafka-sasl-plain kafka/
       gcloud builds submit --tag gcr.io/${PROJECT}/zookeeper-sasl-plain zookeeper/
       
1. Open `cluster.yaml` and adapt the path to your images. 

1. Deploy the cluster to kubernetes

       kubectl apply -f cluster.yaml

1. Check that your pods and services have been created. 

       kubectl get pods
       kubectl get services

#### Testing the Deployment

1. Log into the kafka container using kubectl 

       kubectl exec -it kafka -- /bin/bash

1. Execute the following commands to test producing and consuming from a test topic

       kafka-console-producer --broker-list kafka:9093 --producer.config /etc/kafka/consumer.properties --topic test
       kafka-console-consumer --bootstrap-server kafka:9093 --consumer.config /etc/kafka/consumer.properties --topic test --from-beginning
