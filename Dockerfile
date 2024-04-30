# Use the official Node.js 14 base image from Docker Hub
FROM node:14

# Set the working directory inside the container to /app
WORKDIR /app

# Copy package.json and package-lock.json (if exists) to the working directory (/app)
COPY package*.json ./

# Install Node.js dependencies based on package.json
RUN npm install

# Copy all files from the current directory (your application source code) into the working directory (/app) of the container
COPY . .

# Expose port 3006 to allow incoming connections to the container
EXPOSE 3006

# Specify the default command to run when the container starts
CMD ["npm", "start"]
