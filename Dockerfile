FROM node:22.4.0-slim 

ENV NODE_ENV=development

WORKDIR /src

COPY package.json package-lock.json /src/
RUN npm install

CMD [ "npm", "run", "dev" ]