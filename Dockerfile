FROM node:10
COPY .env.example .env
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN npm install
ENV MONGODB_URL mongodb://mongo:27017/database
CMD "npm" "start"