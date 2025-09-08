# Use a lightweight Nginx base image
FROM nginx:alpine

# Copy your static website files into the Nginx document root
# Ensure your static site files are in the same directory as this Dockerfile,
# or adjust the source path accordingly.
COPY . /usr/share/nginx/html

# Expose port 80, as Nginx inside the container will listen on this port
EXPOSE 80

# Command to run Nginx (default for nginx:alpine)
CMD ["nginx", "-g", "daemon off;"]
