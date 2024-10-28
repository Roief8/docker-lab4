# Use the official Node.js image
FROM node:16

# Create and set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm i

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on (adjust if necessary)
EXPOSE 8080

# Command to start the app
CMD ["npm","start", "server.js"]
