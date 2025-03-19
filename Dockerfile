#builds the image from (based on) the existing node image
FROM node:20-alpine


#set the environment variables for the image
ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password


#create this directory inside the container.
RUN mkdir -p /home/app  


#copy the contents from this dir, to the /home/app directory in the container.
COPY  ./nodejs-app/app /home/app 

#sets a default working directory inside the container, all commands that follow, will be executed in thie work dir.
WORKDIR /home/app

#Installes the most recent module versions - to avoid discrepancies in module version compatibility 
RUN npm install

#executes the linux command that will start the app inside the container
CMD [ "node", "server.js" ]