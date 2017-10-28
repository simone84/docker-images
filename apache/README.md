
## Name ##

- Apache2

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
cd test/apache && docker build -t c6apache2:latest .
```
* Running binding on the 80
```
docker run -d -p 80:80 --name apache2 c6apache2:latest
```
* Access on the container
```
docker exec -ti apache2 bash
```
* Checking logs
```
docker logs apache2
```

### TEST WITHOUT LOCAL BUILDING ###

* Download the image and run the container
```
docker run -d -p 80:80 --name apache2 simone84/centos6-apache2:latest
```
### JUST PULLING THE IMAGE FROM THE HUB ###
* Download the image to make your modifies
```
docker pull simone84/centos6-apache2:latest
```

### TREE ###
```
.
├── Dockerfile
├── README.md
└── var
    └── www
        └── html
            └── index.html
```

### LOGO ###
![Alt text](https://goodlogo.com/images/logos/apache_software_foundation_logo_3074.gif "Apache Logo")
