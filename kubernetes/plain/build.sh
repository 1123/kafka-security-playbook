#!/bin/bash

set -e -u

gcloud builds submit --tag gcr.io/${PROJECT}/kafka-sasl-plain kafka/
gcloud builds submit --tag gcr.io/${PROJECT}/zookeeper-sasl-plain zookeeper/

