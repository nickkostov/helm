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

> [!TIP]
> Because I am **not using ingress controller**, I can not access the set up using it. (example is given if someone wants to use it)

### Option 1
>![]
