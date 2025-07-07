FROM node:18-alpine
WORKDIR /app
#Copy package files first for caching
COPY package*.json ./
#Install dependencies
RUN npm install
#Copy the rest of the applications
COPY . .
# Expose the port your app runs on
EXPOSE 3000
# Start the app
CMD ["npm", "start"]
