# How to use these files here:

## The Deployment:

### Start the Deployment:
```bash
kubectl apply -f frontend.yaml
```
### Delete/Stop the Deployment:
```bash
kubectl delete -f frontend.yaml
```
### Verify your work

Get the pods:
```bash
kubectl get pods 
```
Get the deployment:
```bash
kubectl get deployment 
```
## Accessing the deployment

> [!IMPORTANT]
> Because I am **not using ingress controller**, I can not access the set up using it. (example is given if someone wants to use it)

Apply the service:

```bash
kubectl apply -f frontend-service.yaml
```

### Option 1

- Port forwarding:

```bash
kubectl port-forward deployment/frontend 8080:4200
```

```bash
kubectl port-forward pod/<pod-name> 8080:4200
```

### Option 2

- Type: LoadBalancer service:

```yaml
apiVersion: v1
kind: Service
metadata:
  labels:
    name: frontend
  name: frontend
spec:
  ports:
    - protocol: "TCP"
      port: 80
      targetPort: 4200
  type: LoadBalancer
  selector:
    app: frontend
```