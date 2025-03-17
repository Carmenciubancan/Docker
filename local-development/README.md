## Docker for local development

### Steps; overview


- Create Dockerfile for Nodejs application and build docker image 

- Run Nodejs application in a container and connect to MongoDB container locally

- Run Mongoexpress ( UI of Mongodb )

_______________________________________________

### Steps; in detail

- Pull Docker images from docker hub ( MongoDB and Mongo express)


- Connect between the Mongodb and the Mongo express containers: 

    - Create a Docker network for this purpose (mongo-network)

- Run the containers inside the mongo-network 


- create `user-account` _db_ and `users` _collection_ in mongo-express

- Start nodejs app

- View the interactions with the app in the mongo UI