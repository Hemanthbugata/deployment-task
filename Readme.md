# GKE + FluxCD + ArgoCD + Argo Workflows + NGINX Deployment

## Steps

1. **Provision GKE via OpenTofu**
   - Configure and run OpenTofu to create the GKE cluster.

2. **Bootstrap FluxCD**
   - Run Flux bootstrap to connect your GitOps repo.

3. **Install ArgoCD and Argo Workflows**
   - Use Helm to install ArgoCD and Argo Workflows.

4. **Deploy NGINX via ArgoCD**
   - Commit Kustomize manifests and ArgoCD Application YAML to your repo.
   - Apply the Application manifest.

## Folder Structure

See the root of this repository.

## Quick Commands

```sh
# GKE Cluster (OpenTofu)
cd 01-tofu-gke
tofu init
tofu apply -auto-approve -var="project_id=YOUR_GCP_PROJECT_ID"
gcloud container clusters get-credentials demo-gke-cluster --region us-central1 --project YOUR_GCP_PROJECT_ID

# FluxCD Bootstrap
cd ../02-flux-bootstrap
./flux-install.sh

# ArgoCD
cd ../03-argocd
./install-argocd.sh

# Argo Workflows
cd ../04-argoworkflows
./install-argowf.sh

# Deploy NGINX App
kubectl apply -f ../nginx/application.yaml -n argocd
```

---

You now have an end-to-end GCP GKE cluster, bootstrapped with FluxCD, running ArgoCD and Argo Workflows, and deploying NGINX via ArgoCD!
