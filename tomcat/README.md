# README #

- tomcat8
* Public container: https://hub.docker.com/r/simone84/centos6-tomcat8/

### REQUIREMENTS ###

- Docker installed locally
- Git to clone this repository

### TEST WITH A LOCAL BUILDING ###

* Download
```
git clone git@bitbucket.org:simo84/test.git
```
* Building
```
cd docker/tomcat && docker build -t centos6-tomcat8:latest 
```
* Running binding on the 8081
```
docker run -tdi -p 8081:8080 --name tomcat8 centos6-tomcat8:latest
```
* Access on the container
```
docker exec -ti tomcat8 bash
```
* Checking logs
```
docker logs tomcat8
```

### TEST WITHOUT LOCAL BUILDING ###

* Download the image and run the container
```
docker run -tdi -p 8081:8080 --name tomcat8 centos6-tomcat8:latest
```
### JUST PULLING THE IMAGE FROM THE HUB ###
* Download the image to make your modifies
```
docker pull simone84/centos6-tomcat8:latest
```

### TREE ###
```
.
├── Dockerfile
└── README.md
```

### LOGO ###
![Alt text](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6vYal2jzBWUJIvYIZgSEzdCJgbV83CMHreCF6k90XDhqw4GRJ6Q "Tomcat Logo")
