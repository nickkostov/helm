# Discovering Helm

## What is Helm?

### Application in Kubernetes:
1. You build your application in a container. 
2. You wrap the container in a pod.
3. You run that pod in a kubernetes cluster.
4. You need a service that is going to load balance external traffic to your pods.
5. If you want to expose your service to the world you can use an ingress. (It is a reverse proxy that maps URLs to your cluster.)
6. You might need other objects like ConfigMaps to store configuration parameters.
7. You might need a secret to store some passwords.
8. If your application is stateful you will need k8s objects like volumes. (PV/PVC).


### How do you install the kubernetes objects?

The entry point to a Kubernetes Cluster is the Kubernetes API.
You can access the API either via REST Client or with a high level client such as  Go Client or with the command line tool  `kubectl`. 

- To install an application with `kubectl` you first have to define the descriptions of your Kubernetes objects in YAML files, and hten install them with `kubectl create` commands. Usually there is one file for each object. 
    - That method has some limitations.
        - With `kubectl` you don't install an application as an atomic set of Kubernetes objects rather you deploy each object separately. However, these objects may depend on each othe, and the order in which you install them is usually also important. So we would like to group these objects in a package and install that package as a singel entitity.

Helm allows you to package all of the objects, because of the known limitation of having to track everything that was installed with `kubectl`. Allows you to have versioning over this. Customizations and dependencies between applications.
