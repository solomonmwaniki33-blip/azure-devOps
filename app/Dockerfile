# Step 1: Use an official Node.js runtime as the base
FROM node:18-slim

# Step 2: Set the working directory inside the container
WORKDIR /usr/src/app

# Step 3: Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Step 4: Copy the rest of your app's code
COPY . .

# Step 5: Expose the port the app runs on
EXPOSE 8080

# Step 6: Define the command to run the app
CMD [ "node", "index.js" ]