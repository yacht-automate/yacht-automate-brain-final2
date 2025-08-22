# Use Node.js 20 official image
FROM node:20-alpine

# Install Python (needed for better-sqlite3)
RUN apk add --no-cache python3 make g++

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy source code
COPY . .

# Create database directory
RUN mkdir -p db

# Expose port
EXPOSE 5000

# Start command - direct execution
CMD ["npx", "ts-node", "src/index.ts"]