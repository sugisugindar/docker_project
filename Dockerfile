# Stage 1: Build the application
FROM node:18-alpine AS build

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY ./frontend/package.json ./frontend/package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY ./frontend ./

# Build the application
RUN npm run build

# Stage 2: Serve the application
FROM nginx:alpine

# Copy the build artifacts from the build stage
COPY --from=build /app/dist /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
