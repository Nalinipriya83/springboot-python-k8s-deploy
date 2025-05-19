#!/bin/bash

CLUSTER_NAME="springboot-python-cluster"
REGION="us-east-2"
NODE_TYPE="t2.medium"
NODE_COUNT=2

echo "Creating EKS cluster: $CLUSTER_NAME..."

eksctl create cluster \
  --name $CLUSTER_NAME \
  --version 1.29 \
  --region $REGION \
  --nodegroup-name default-node-group \
  --node-type $NODE_TYPE \
  --nodes $NODE_COUNT \
  --nodes-min 1 \
  --nodes-max 3 \
  --managed

echo "EKS cluster $CLUSTER_NAME created."

