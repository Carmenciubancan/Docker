# Steps; commands

$ docker pull mongo
$ docker pull mongo-express
$ docker network ls
$ docker netowrk create mongo-network


# runs a container from the mongodb image, with the following parameters; opening the port, setting the variables and defining the docket network in which it needs to run 
$ docker run -p 27017:27017 -d -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=password --name mongodb --net mongo-network mongo


# runs a containers from the mongoexpress image
$ docker run -d -p 8081:8081 -e ME_CONFIG_MONGODB_ADMINUSERNAME=admin -e ME_CONFIG_MONGODB_ADMINPASSWORD=password --net mongo-network --name mongo-express -e ME_CONFIG_MONGODB_SERVER=mongodb mongo-express

# The mongo express UI is now available at localhost:8081 and is running on the same docker network as the mongodb container. 

___________________________

# Start application 

$ cd app
$ npm install 
$ node server.js

# application available at localhost:3000
