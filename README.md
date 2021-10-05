# devops-practical
* To build the docker image: example ```docker build -t my-nodejs-app . ```

* to deploy the helm chart: 
   1. package the helm chart by pointing to the helm directory, and execute this command: ```helm package [CHART_PATH] [...] [flags]```
   2. deploy the helm chart to the K8s cluster: ```helm install [NAME] [CHART] [flags]```

* to create the k8s cluster, build the terraform:
   1. ``` cd terraform ```
   2. ``` terraform validate ```
   3. ```terraform plan```
   4. ```terraform apply```