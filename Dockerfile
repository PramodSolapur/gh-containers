FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.kk8tkqd.mongodb.net
ENV MONGODB_USERNAME psolapur5
ENV MONGODB_PASSWORD mSCoZRYefibrmYwI

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]