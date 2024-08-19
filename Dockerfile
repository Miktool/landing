# Specify the base image
FROM node:alpine
# Set the working directory
WORKDIR /
# Copy the package.json and package-lock.json files
COPY package*.json ./
# Install the dependencies
RUN yarn install
# Copy the app files
COPY . .
# Build the app
RUN yarn build
# Expose the port
EXPOSE 3000
# Run the app
CMD ["yarn", "start"]