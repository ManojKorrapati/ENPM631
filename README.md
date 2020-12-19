# ENPM631 TCP/IP Project
This application includes three containers with different functionalities as listed below.
* `DNS Application`
* `Web Application` 
* `Radis Database`

The first docker container is a DNS application that acts as a local DNS server by forwarding the port 53 to the dockerhost. The DNS portforwarding can be done by adding following configuration to the docker-compose.yml file.
```
dns:
    build: .
    ports:
      - "53:53"
```
By default, this web application runs on port 5000 and can be only accessable to the VM but not the hostsystem. However, The access to web application from host system can be established by using the port forwarding technique. By making the following config changes to the docker-compose.yml file it is possibble to access the application on port 8000 from outside the docker host.
```
services:
  web:
    image: "manojkorrapati/webapp"
    ports:
      - "8000:5000"
  redis:
    image: "redis:alpine"
```
