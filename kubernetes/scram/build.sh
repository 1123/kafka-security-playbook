#!/bin/bash

set -e -u

gcloud builds submit --tag gcr.io/${PROJECT}/kafka-sasl-scram kafka/
gcloud builds submit --tag gcr.io/${PROJECT}/zookeeper-sasl-scram zookeeper/

