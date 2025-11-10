# Use the official Node.js image as a base
FROM node:20-alpine

# Create and define the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json (if available) into the container
COPY package.json ./
# If you have a package-lock.json, you would also copy it with the following command:
# COPY package-lock.json ./

# Install the Node.js dependencies inside the container
RUN npm install

# Copy the rest of the project files (including HTML and CSS) into the container
COPY . .

# Expose the port on which the app will be running inside the container
EXPOSE 8080

# Command to run the app when the container starts
CMD ["npm", "start"]
