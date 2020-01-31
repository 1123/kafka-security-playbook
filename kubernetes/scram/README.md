## Example for Kafka with SASL/SCRAM authentication on Kubernetes

### Prerequisites

* kubectl logged into a Kubernetes cluster with about 8GB memory
* some container registry available to push images to


### Build and Deploy

1. Build the images and deploy them to a container registry, that your cluster has access to. 
   This example uses Google Container Registry for storing the images and Google Cloud Build for building and deploying the images. This is automated by the `build.sh` script:
   
       gcloud builds submit --tag gcr.io/${PROJECT}/kafka-sasl-scram kafka/
       gcloud builds submit --tag gcr.io/${PROJECT}/zookeeper-sasl-scram zookeeper/
       
1. Open `cluster.yaml` and adapt the path to your images. 

1. Deploy the cluster to kubernetes

       kubectl apply -f cluster.yaml

1. Create the `kafka` user with the kafka-configs command line tool. 

        ➜  cat create-kafka-user.sh
        #!/bin/bash

        set -u -e

        kubectl exec kafka -- \
          kafka-configs --zookeeper zookeeper:2181 \
            --alter \
            --add-config 'SCRAM-SHA-256=[password=kafka],SCRAM-SHA-512=[password=kafka]'\
            --entity-type users \
            --entity-name kafka

1. Check that your pods and services have been created. 

       kubectl get pods
       kubectl get services

### Testing the Deployment

1. Produce some sample data. 

       test-produce.sh              

1. Consume the same data.

       test-consume.sh
