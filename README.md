# T-system-Bookstore App


Hi Team,

Please find my attached manifest file and docs.

As per requirement given I have prepared Bookstore application's manifest files to deploy API to Kubernetes cluster.
It includes Dockerfile also which we can run locally using Rancher Desktop and which gives us Containerized application running status before running on Kubernetes pod and installed with the required dependency. 
We can first create docker image and then run container from it.
Below commands can be used to build and run Docker container locally:

Build the Docker image:
nerdctl build -t fastapi_app 

Run the Docker container:
nerdctl run -d -p 8000:8000 fastapi_app

Entry point to start application is the main.py file and can also refer app & to the FastAPI instance created.

Now, to run same container image on kubernetes cluser we can Push this image using Kaniko to container registry (ACR).
and our kubernetes (deployment.yaml) can pull the image from ACR registry.

Below Kubernetes commands can be used to run Deployment.yaml and to create pod on kubernetes.

kubectl apply -f deployment.yml

also to apply the service configuration:

kubectl apply -f service.yml

Check pod is running or not 

kubectl get pods -n namespace

I have used Cluster IP as a service type to communicate over pod within cluster which will gives us more security within network.
To expose services externally load balancer service type can be used.

We can call rest api using below ex command:
curl --location --request POST "http://fastapi-service.app1.svc.cluster.local"

We can run above setup on AKS cluster also on Rancher which gives kubernetes cluster to use locally.
kubectl can be installed to run AKS commands.
AKS resource can be created using IAC terraform pipeline.
Uami and SPN access can be given to run resources as well as to access pods,namespaces etc if within private network.
I tried to create Helm chart to have adjustable parameter for all environments.
As we are deploying API so can create endpoints that allow to  interact/view and edit data backend data. 
We can discuss further on it so that I can explain.
Thanks.

