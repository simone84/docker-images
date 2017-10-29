# README #

- XXX
* Public container: https://hub.docker.com/r/simone84/centos6-XXX/

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
cd docker/XXX && docker build -t YYY:latest .
```
* Running binding on the 80
```
docker run -OPTIONS -p ${BOXPORT}:${CONTAINERPORT} --name XXX YYY:latest
```
* Access on the container
```
docker exec -ti XXX bash
```
* Checking logs
```
docker logs XXX
```

### TEST WITHOUT LOCAL BUILDING ###

* Download the image and run the container
```
docker run -OPTIONS -p ${BOXPORT}:${CONTAINERPORT} --name XXX YYY:latest
```
### JUST PULLING THE IMAGE FROM THE HUB ###
* Download the image to make your modifies
```
docker pull simone84/centos6-XXX:latest
```

### TREE ###
```

```

### LOGO ###
![Alt text]( " Logo")
