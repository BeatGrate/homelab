#!/bin/sh

helm repo add argo https://argoproj.github.io/argo-helm

helm repo update

kubectl create namespace argocd

helm install argocd argo/argo-cd --namespace argocd --version 9.3.4 -f ./vaules.yaml

