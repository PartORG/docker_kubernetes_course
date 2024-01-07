# instruction to build your image on some BaseImage
FROM node:16

# set a main working directory in image (where all commands will be executed)
WORKDIR /app

# small optimization - copy only important file for npm install command
COPY package.json /app

# executed when image is created
RUN npm install

# copy code from local dir to destination folder in image - app/ here
COPY . /app

# expose certain port when container is started to our local system
EXPOSE 80

# executed when a Container is started based on the image
CMD ["node", "server.js"]
