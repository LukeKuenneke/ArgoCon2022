WORKSHOP_USER="LukeKuenneke"
argocd --port-forward --port-forward-namespace argocd login
argocd --port-forward-namespace argocd repo add "https://github.com/$WORKSHOP_USER/ArgoCDRollouts"
argocd --port-forward-namespace argocd app create argo-rollouts --repo "https://github.com/$WORKSHOP_USER/ArgoCDRollouts" --path manifests/ArgoCD101-RolloutsController --dest-namespace argo-rollouts --dest-server https://kubernetes.default.svc
argocd --port-forward-namespace argocd app sync argo-rollouts