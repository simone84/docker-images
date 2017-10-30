# SCRIPTS FOLDER #

* make.sh
```
This script builds a new project folder. Must run from this folder and need an option.
EX: ./make project_name
```
* cleaner.sh
```
This script stop/remove the running containers and delete the local images except the centos one.
There is a variable on the third line named TOLEAVE to modify the source image that you want to keep.
You may run this script from every folder as long as the user got the docker group.
EX: ./cleaner.sh
```
* swarm-building-aws.sh
```
Automated Script to install in your aws account a swarm cluster with two nodes and run a deploy.
Additional info in the script.
```

### TEMPLATE ###

Templates need to go into the related folder. Please do not leave with the scripts.

* Dockerfile
```
Just an example to bring in a new project folder to start.
```
* README.md
```
Another example for the building documentation.
```

### STRUCTURE ###
```
.
├── cleaner.sh
├── make.sh
├── README.md
└── templates
    ├── Dockerfile
    └── README.md
```
