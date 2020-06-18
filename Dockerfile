FROM node:10

# Create app directory
WORKDIR /var/www/production
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 80
CMD [ "node", "app.js" ]
