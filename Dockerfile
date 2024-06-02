# Use the official Node.js 16 image as a base image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose port 3000 (or whichever port your application uses)
EXPOSE 3000

# Run the application
CMD ["node", "main.js"]
