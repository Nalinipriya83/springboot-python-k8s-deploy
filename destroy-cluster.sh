#!/bin/bash

CLUSTER_NAME="springboot-python-cluster"
REGION="us-east-2"

echo "Deleting EKS cluster: $CLUSTER_NAME..."

eksctl delete cluster --name $CLUSTER_NAME --region $REGION

echo "EKS cluster $CLUSTER_NAME deleted."

