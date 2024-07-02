#1.Deploying Vue app for local Development
# PULL the baseImage
FROM node:20.15.0-alpine

# SET the working directory: /usr/app = ./
WORKDIR /usr/app

COPY ./package*.json ./

# Installation dependencies
RUN npm install

# Copy code from host to container
COPY . .

EXPOSE 5173

# Deploy app for local Development
CMD [ "npm","run","dev" ]