# Use the official Node.js image as a base
FROM node:19-bullseye

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./
COPY eslint.config.js
# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .
RUN chmod +x ./node_modules/.bin/jest

# Run tests
RUN npx eslint .

CMD [ "npm", "test" ]
