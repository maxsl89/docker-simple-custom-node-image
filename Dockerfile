FROM node

WORKDIR /app

COPY package.json /app

# after copying run npm install
RUN npm install

# firs dot (.) - same folder that cotains the dockerfile
# /app - path unside the image
# all the folders, subfolders and files should be copied into the image app folder
COPY . /app

# when this container is started expose (открой) 80 port to our local system
EXPOSE 80

# when all of that is done start our server
# CMD runs when the conteiner started based on the image (pass an array)
CMD ["node",  "server.js"]

# docker build .

# docker run -p 3000:80
# -p 3000:80 - on which port on our local machine it should be mapped (3000)