# Use the official Node.js image as the base image
FROM node:latest

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the /app directory
COPY package*.json ./

# Install the app's dependencies
RUN npm install

# Copy the rest of the app's files to the /app directory
COPY . .

# Set the environment variable for the app's port
ENV PORT 3000

# Expose port 3010
EXPOSE 3000

# Start the app
CMD [ "npm", "start" ]