FROM node:16.13-alpine
WORKDIR /app
COPY package.json ./app
COPY package-lock.json ./app
#RUN npm ci
RUN npm install
COPY . .
EXPOSE 3000
EXPOSE 3020
CMD node index.js