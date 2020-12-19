# ENPM631 TCP/IP Project
This application includes three containers with different functionalities as listed below.
* `DNS Application`
* `Web Application` 
* `Radis Database`

The first docker is a DNS application that acts as a local DNS server by forwarding the port 53 to the localhost. The portforwarding can be done by adding following settings to the configuration file
```
dns:
    build: .
    ports:
      - "53:53"
```
