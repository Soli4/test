FROM nginx:alpine

# Install git
RUN apk add --no-cache git

# Clone your repo into Nginx html folder
RUN git clone https://github.com/Soli4/test.git /usr/share/nginx/html

# Optional: remove .git folder
RUN rm -rf /usr/share/nginx/html/.git
