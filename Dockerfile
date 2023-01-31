FROM node:12.14.1-alpine
WORKDIR /app
#RUN chmod -R ug+rw app
#COPY package-lock.json /app
#COPY package.json /app
COPY . /app
RUN npm install

EXPOSE 3020
CMD node index.js