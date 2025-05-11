
# Install & Operate [Prometheus - Grafana] Using Helm

You can find the Helm charts for Prometheus and Grafana at the following links:

- [Prometheus Helm Chart](https://artifacthub.io/packages/helm/prometheus-community/prometheus)
- [Grafana Helm Chart](https://artifacthub.io/packages/helm/grafana/grafana)

---

## Deploy Monitoring using Helm

This script automates the deployment process for both `Prometheus` and `Grafana` using `Helm`.

### Steps:

1. Add the `Helm` repositories for both Prometheus and Grafana.
2. Create the `monitoring` namespace.
3. Install `Prometheus` and `Grafana` in the `monitoring` namespace.
4. Wait for the `Pods` to start.
5. Retrieve the `URLs` to access both applications.
6. Display the `URLs` and automatically open them in the browser.

### To Deploy Apps:

> **Note:** Ensure that `Minikube` is up and running before deploying.

> **Important:** Ensure that the `values.yaml` files are in the correct path, or update the following lines in the script to reflect the correct path:

```bash
--values="$PWD/Prometheus/values-prometheus.yaml"
--values="$PWD/Grafana/values-grafana.yaml"
```

Then, proceed with the following commands:

```bash
chmod +x monitoring-deploy.sh
```

```bash
./monitoring-deploy.sh
```

---

### To Delete Apps:

To delete the deployed applications, run:

```bash
chmod +x delete-deployment.sh
```

```bash
./delete-deployment.sh
```

