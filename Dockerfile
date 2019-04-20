##################
### Base Image ###
##################
FROM node:latest

##################
### Maintainer ###
##################
MAINTAINER Felix Klauke <info@felix-klauke.de>

#########################
### Working Directroy ###
#########################
WORKDIR /usr/src/app

#############################
### Copy dependency files ###
#############################
COPY package*.json ./

#############
### Build ###
#############
RUN npm ci --only=production

#########################
### Copy source files ###
#########################
COPY . .

##################################
### Expose Port for web server ###
##################################
EXPOSE 3000

#####################
### Start the app ###
#####################
CMD [ "npm", "start" ]
