$ apt update
$ apt install docker 


# Nexus is a stateful application, which means its data needs to be persistent. attach a Docker volume to the container for this purpose. 


$ docker volume create --name nexus-data  #create docker volume with the name "nexus-data"

$ docker run -d -p 8081:8081 --name nexus -v nexus-data:/nexus-data sonatype/nexus3 
# pulls the image from docker hub, runs the container in deteach mode, maps the port inside the container, names the container "nexus", attaches the volume "nexus-data"


$ netstat -lnpt # lists the listening TCP ports

$ docker ps # check to see that the container is running 

# nexus app available at http://164.90.169.237:8081/ 


$ docker volume ls # lists the volumes
$ docker inspect nexus-data # inspect the volume (in this case by name "nexus-data"), this will show info on the volume