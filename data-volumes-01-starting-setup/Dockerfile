FROM node:14

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

# Argument only available in Dockerfile
ARG DEFAULT_PORT=80

# provide environment variables to docker image
# here after PORT is a default value
ENV PORT $DEFAULT_PORT

# use of env ver in Dockerfile
EXPOSE $PORT

# create a Volume -- folders on host machine which are mounted into container!
# This is Anonymous Volume -- dissappear when Container Deleted!
# VOLUME [ "/app/feedback" ]

# Named Volume is set on running the container with -v <name>:<path_in_image> parameter

CMD [ "npm", "start" ]
