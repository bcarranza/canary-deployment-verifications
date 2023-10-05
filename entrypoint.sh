#!/bin/bash

MICROSERVICE_NAME=$1
ENABLE_DEBUG=$2
CLUSTER_NAME=$3
NAME_SPACE=$4
DURATION=$5
INTERVAL=$6
WAIT=$7

set -e

# Enable debugging output
if [[ "${ENABLE_DEBUG}" == "true" ]]; then
    set -x
fi

echo "Running for Service: ${MICROSERVICE_NAME}"
time=$(date)
# echo "::set-output name=time::$time"

# Get kubeconfig/auth
aws eks update-kubeconfig --name ${CLUSTER_NAME}
