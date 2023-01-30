FROM node:12.14.1-alpine
WORKDIR /app
RUN chmod -R ug+rw app
COPY package-lock.json ./package-lock.json
COPY package.json ./package.json
RUN npm install
EXPOSE 3020
COPY . .
CMD npm start