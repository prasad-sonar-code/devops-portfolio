# Flask App Runbook

## Check app health
kubectl get pods
kubectl get services

## View logs
kubectl logs -l app=flask-app

## Restart deployment
kubectl rollout restart deployment/flask-app

## Scale up pods
kubectl scale deployment flask-app --replicas=3

## Check SLO metrics
curl http://<service-url>/health
