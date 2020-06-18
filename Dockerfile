FROM node:10

# Create app directory
WORKDIR /var/www/production
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "node", "app.js" ]
