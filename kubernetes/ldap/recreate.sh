#!/bin/bash

set -e -u 

kubectl delete --force --grace-period=0 -f ldap-cluster-benedikt.yaml ||echo 'WARN: not all resources deleted'
# ./build.sh
kubectl apply -f ldap-cluster-benedikt.yaml 
sleep 5
./create-users.sh
./create-acls.sh

sleep 5
# produce-as-barnie.sh
# produce-as-charlie.sh
# consume-as-alice.sh
