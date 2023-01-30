FROM node:18-alpine
WORKDIR /app
COPY package-lock.json ./package-lock.json
COPY package.json ./package.json
RUN npm install
EXPOSE 3020
COPY . .
CMD npm start