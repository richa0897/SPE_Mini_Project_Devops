# Mini Project- Scientific Calculator using DevOps
For this project, GitHub is used for Source Control Management. A repository is created
on GitHub and the latest version of the modified code is pushed to it.
This is a Java project. Junit is used for writing the test cases and maven
build is used for building the project.
For this project I have used Jenkins to orchestrate the different stages in the pipeline.
Jenkins provides a pipeline where you can utilize a combination of plugins to integrate
the various tools to deliver a software application in a production environment.
After that, docker is used for containerization where the docker image is pushed onto
the docker hub.
Ansible is used for deploying the image in Docker Hub to the production environment.
We have also used elasticsearch-logstash-kibana for continuous monitoring
