FROM node:slim

WORKDIR /app

COPY . .

EXPOSE 3000

RUN apt update -y &&\
    chmod +x server.js &&\
    npm install 
    
CMD ["node", "server.js"]
