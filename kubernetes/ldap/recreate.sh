#!/bin/bash

set -e -u 

./build.sh
helm install cp-ldap -f ldap-chart/values.yaml -n cp-ldap ./ldap-chart
sleep 5
./create-users.sh
./create-acls.sh

sleep 5
# produce-as-barnie.sh
# produce-as-charlie.sh
# consume-as-alice.sh
