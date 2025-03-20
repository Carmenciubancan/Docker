# Docker projects notes

* docker image for the app can be found in ECR at [(891377303456.dkr.ecr.eu-central-1.amazonaws.com/my-app:latest)]


* The docerized app was deployed with docker compose on [(ec2-3-66-219-217.eu-central-1.compute.amazonaws.com:8081)]

* 2 docker compose files : 
    - "mongo-compose.yaml" is the docker compose file for the local development, where the app is in a local folder 
    - "docker-compose-server.yaml" for the server deployment. includes pulling the app image from the ECR 