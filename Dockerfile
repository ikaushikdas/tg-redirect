FROM node:16.13-alpine
WORKDIR /app
COPY package.json ./package.json
COPY package-lock.json ./package-lock.json
#RUN npm ci
RUN npm install
COPY . .
EXPOSE 3000
EXPOSE 3020
CMD node index.js