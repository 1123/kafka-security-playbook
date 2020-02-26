#!/bin/bash

set -e -u

gcloud builds submit --tag gcr.io/solutionsarchitect-01/kafka-rbac kafka/
gcloud builds submit --tag gcr.io/solutionsarchitect-01/cp-enterprise-control-center-rbac control-center/
gcloud builds submit --tag gcr.io/solutionsarchitect-01/cp-kafka-rest-rbac kafka-rest/

