kubectl create -f mongodb-persistent-volume.yaml
kubectl create -f mongodb-persistent-volume-claim.yaml
kubectl create -f mongodb-secret.yaml
kubectl create -f mongodb-service.yaml
kubectl create -f mongodb.yaml
kubectl create -f backend-secret.yaml
kubectl create -f backend-service.yaml
kubectl create -f backend.yaml
kubectl create -f frontend-configmap.yaml
kubectl create -f frontend-service.yaml
kubectl create -f frontend.yaml
kubectl create -f ingress.yaml

