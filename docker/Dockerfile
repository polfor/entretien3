FROM node:latest as base

ENV NODE_ENV=development

WORKDIR /src

FROM base as build

COPY --link package.json package-lock.json /src/
RUN npm install

# Run
FROM base

COPY --from=build /src/node_modules /src/node_modules

CMD [ "npm", "run", "dev" ]