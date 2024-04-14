# Use the official Node.js image as a base
FROM node:19-bullseye

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Ensure Jest is executable
RUN chmod +x ./node_modules/.bin/jest

# Install ESLint globally
RUN npm install -g eslint
COPY eslint.config.js ./

# Run ESLint
RUN eslint .

# Define the default command to run tests
CMD [ "npm", "test" ]
