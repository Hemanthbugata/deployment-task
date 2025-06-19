#!/bin/bash
kubectl create namespace argo
helm repo add argo https://argoproj.github.io/argo-helm
helm repo update
helm upgrade --install argo-workflows argo/argo-workflows \
  --namespace argo \
  -f argoworkflows/values.yaml