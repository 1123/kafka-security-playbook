#!/bin/bash

set -e -u

gcloud builds submit --tag gcr.io/solutionsarchitect-01/kafka-rbac kafka/

