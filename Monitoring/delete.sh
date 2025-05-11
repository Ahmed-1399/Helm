#!/bin/bash

# Variables

PROMETHEUS_RELEASENAME="prometheus"
GRAFANA_RELEASENAME="grafana"
# GRAFANA_REPONAME="grafana"
# PROMETHEUS_REPONAME="prometheus-community"
NAMESPACE="monitoring"
# Variables

# Uninstall Proemtheus and Grafana
helm uninstall $PROMETHEUS_RELEASENAME --namespace $NAMESPACE
helm uninstall $GRAFANA_RELEASENAME --namespace $NAMESPACE

# Delete Namespace
kubectl delete ns $NAMESPACE

# Delete 
# helm repo remove $PROMETHEUS_REPONAME
# helm repo remove $GRAFANA_REPONAME