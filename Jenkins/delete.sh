#!/bin/bash

# NAMESPACE="jenkins"
REPONAME="jenkins"
RELEASE_NAME=j"enkins"
REPONAME= jenkins/jenkins

# Uninstall Jenkinsa
helm uninstall $RELEASE_NAME
# helm uninstall $RELEASENAME --namespace $NAMESPACE
rm -f *.out
# Delete Namespace
# kubectl delete namespace $NAMESPACE

# Delete Repo
helm repo remove ${REPONAME}
