

## CI/CD #Deployment #EC2

* From Code To Cloud ⛅️ - CI/CD using Github actions - Docker/dockerHub - EC2/AWS

- mkdir CICD_Docker_EC2
 
## GitHub
* Erstellung new repository mit Name CICD_Docker_EC2
- git inin
- git add .
- git commit -m "added files"
- git branch -M main
- git remote add origin https://github.com/AlmohanadIlewi/CICD_Docker_EC2.git
- git push -u origin main

## Node.js
 - npm init
 - touch app.js in Package.json habe ich anstatt index.js app.js geändert 
 -  Code using Express.js
 - npm install express
 - npm start wird => App listening on port 3000

 ## Docker 
 - touch Dockerfile
 * Dockerfile:
 - docker build -t cicd-nodejsapp .
 - docker ps
 - docker image ls
 - docker run --name cicd-nodejsapp-container -d -p 3002:3000  cicd-nodejsapp                => Erstellung Container =>

 Test
   localhost:3002

 # DockerHub
 - new repository name: cicd-docker-nodejs oder direkt die Befehl ausführen dann wird automatisch repo
   mit dem Name cicd-docker-nodejs erstellt 
   
 - docker login

 - docker tag image your-name of Docker Hub/YOUR NEW REPOSITORY:latest

 - docker tag cicd-nodejsapp mohanadilewi/cicd-docker-nodejs:latest
 - docker push mohanadilewi/cicd-docker-nodejsapp:latest

 # test 
 sudo docker exec -it cicd-nodejs-container bash
 
 # Erstellung Ec2 Instance

- Ubuntu machine
- sudo su =====> auf root wechseln
- docker ?
- snap install docker ===> Install Docker auf Ubuntu machine
- docker run --platform linux/amd64 -d -p 3002:3000 --name cicd-nodejs-container mohanadilewi/cicd-docker-nodejs:latest


## CI/CD #Deployment #EC2

* From Code To Cloud ⛅️ - CI/CD using Github actions - Docker/dockerHub - EC2/AWS

- mkdir CICD_Docker_EC2
 
## GitHub
* Erstellung new repository mit Name CICD_Docker_EC2
- git init
- git add .
- git commit -m "added files"
- git branch -M main
- git remote add origin https://github.com/AlmohanadIlewi/CICD_Docker_EC2.git
- git push -u origin main

## Node.js
 - npm init
 - touch app.js in Package.json habe ich anstatt index.js app.js geändert 
 -  Code using Express.js
 - npm install express
 - npm start wird => App listening on port 3000

 ## Docker 
 - touch Dockerfile
 * Dockerfile:
  Image Erstellung mit Name cicd-nodejsapp
 - docker build -t cicd-nodejsapp .
 - docker ps
 - docker iamge ls
 - docker run --name cicd-nodejsapp-cont -d -p 3002:3000  cicd-nodejsapp                => Erstellung Container =>
   localhost:3002

 # DockerHub
 - new repository name: cicd-docker-nodejs oder direkt die Befehl ausführen dann wird automatisch repo
   mit dem Name cicd-docker-nodejs erstellt 
   
 - docker login

 - docker tag image your-name of Docker Hub/YOUR NEW REPOSITORY:latest

 - docker tag  cicd-nodejsapp mohanadilewi/cicd-docker-nodejsapp:latest
 - docker push  mohanadilewi/cicd-docker-nodejsapp:latest

 # test 
 sudo docker exec -it cicd-nodejs-cont           =>  bash
 
 # Erstellung Ec2 Instance

- Ubuntu machine
- sudo su =====> auf root wechseln
- docker ?
- snap install docker ===> Install Docker auf Ubuntu machine
- docker run --name cicd-nodejsapp-cont -d -p 3002:3000  mohanadilewi/cicd-docker-nodejsapp:latest


