# docker build -t venelin/simpleweb .
# docker run -p 8080:8080 venelin/simpleweb
# docker run -it venelin/simpleweb sh

# Specify a base image
FROM node:alpine

WORKDIR /usr/app

# Install some depenendencies
COPY ./ ./
RUN npm install

# Default command
CMD ["npm", "start"]