# Deploy Jenkins using Helm 
You can find the Helm charts for Jenkins at the following links:

- [Jenkins Helm Chart](https://artifacthub.io/packages/helm/jenkinsci/jenkins)

## Add Jenkins Helm Repo 
```
helm repo add jenkins https://charts.jenkins.io
```

## Update Helm Repo
```
helm repo update
```

## Deploy Jenkins 

```
helm install [RELEASE_NAME]  jenkins/jenkins
```

## Upgrade Jenkins
```
helm upgrade [RELEASE_NAME]  jenkins/jenkins
```

## Expose Jenkins service to port 8010
```
kubectl --namespace default port-forward svc/[RELEASE_NAME] 8010:8080
```

## Get Jenkins default password
```
kubectl exec --namespace default -it svc/[RELEASE_NAME] -c jenkins -- /bin/cat /run/secrets/additional/chart-admin-password && echo
```
## Access Jenkins on browser
```
http://127.0.0.1:8010
```

## Uninstall Chart
```
helm uninstall [RELEASE_NAME]
```