# pull base image
FROM node:16.3.0-alpine

# set working directory to /app
WORKDIR /app

# copy frontend folder to /app
COPY . .

# install dependencies
RUN yarn install

# start app
CMD ["yarn", "next", "dev"]