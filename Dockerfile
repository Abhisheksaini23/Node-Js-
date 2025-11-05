# Use Node official image
FROM node:18

# Create app directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy all project files
COPY . .

# Expose port (update if your app uses different)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
