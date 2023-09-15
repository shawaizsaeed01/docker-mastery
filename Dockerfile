# Use a lightweight web server as the base image
FROM nginx:alpine

# Copy the website files into the Nginx web server's root directory
COPY . /usr/share/nginx/html

# Expose port 8080 to allow external access to the web server
EXPOSE 8080

# Start the Nginx web server when the container starts
CMD ["nginx", "-g", "daemon off;"]

