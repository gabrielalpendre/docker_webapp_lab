# Use official Node.js image as the base image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package.json and yarn.lock
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy the rest of your application
COPY . .

# Expose the port your app will run on
EXPOSE 8802

# Run the API server
CMD ["node", "index.js"]

