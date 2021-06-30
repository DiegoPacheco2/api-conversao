FROM node:14.16.1-alpine3.13
LABEL nome: Diego Rodrigues da Silva
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
ENTRYPOINT [ "node" ]
CMD [ "index.js" ]
