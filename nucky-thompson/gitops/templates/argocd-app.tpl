apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: <CHANGEME>
  namespace: argocd
spec:
  project: default
  sources:
  - repoURL: <CHANGEME>
    chart: <CHANGEME>
    targetRevision: <CHANGEME> # Recommended: Check for the latest version
    helm:
      valueFiles:
      - $values/nucky-thompson/gitops/infra/values/<CHANGEME>.yaml
  - repoURL:  https://github.com/BeatGrate/homelab.git
    targetRevision: main
    ref: values
  destination:
    server: https://kubernetes.default.svc
    namespace: <CHANGEME>
  syncPolicy:
    automated:
      prune: true # Allows ArgoCD to delete resources that are no longer in Git
      selfHeal: true # Allows ArgoCD to sync changes if the live state drifts from Git
    syncOptions:
      # Automatically create the destination namespace if it doesn't exist
      - CreateNamespace=true

