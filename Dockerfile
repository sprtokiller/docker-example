# Use Node.js 20 slim as the base image
FROM node:20-slim

# Set the port
ARG MY_PORT=3000

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json .

# Install dependencies
RUN npm install

# Copy the application code
COPY . .

# Set the environment variable
ENV PORT=$MY_PORT

# Expose the port the app runs on
EXPOSE $MY_PORT

# Run the application
CMD ["npm", "start"]
