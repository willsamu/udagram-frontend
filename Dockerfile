# use latest ionic docker image
FROM beevelop/ionic:latest
# FROM node:latest

WORKDIR /www/app

# Copy dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app source
COPY . .

RUN npm install

EXPOSE 8100

# ENTRYPOINT ["ionic"]
CMD ["ionic","serve", "8100", "--address", "0.0.0.0"]