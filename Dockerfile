# Use the official Node.js image.
FROM node:14-alpine

# Set the working directory.
WORKDIR /usr/src/app

# Copy package.json and package-lock.json.
COPY package*.json ./

# Install dependencies.
RUN npm install

# Copy the rest of the application code.
COPY . .

# Expose the application port.
EXPOSE 8080

# Command to run the application.
CMD ["node", "index.js"]

