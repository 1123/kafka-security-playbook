#!/bin/bash

set -e -u

gcloud builds submit --tag gcr.io/${PROJECT}/ldap ldap/
gcloud builds submit --tag gcr.io/${PROJECT}/kafka-ldap kafka/
gcloud builds submit --tag gcr.io/${PROJECT}/zookeeper-ldap zookeeper/

