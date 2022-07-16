FROM node:18-alpine3.15

#setup project directory
WORKDIR /app

#copy package.json to install dependencies
COPY package.json .

#install dependencies
RUN npm install

#copy project files over
COPY . .

#expose server port
EXPOSE 3000

#start program
CMD [ "npm", "run", "start" ]
