# Step 1: Use an official Node.js image as the base
FROM node:16

# Step 2: Set the working directory inside the container
WORKDIR /usr/src/app

# Step 3: Copy the package.json and package-lock.json (if available)
COPY package*.json ./

# Step 4: Install the application dependencies
RUN npm install

# Step 5: Copy the rest of the application files
COPY . .

# Step 6: Expose the port your app will run on
EXPOSE 3000

# Step 7: Start the application using index.js
CMD ["node", "index.js"]
