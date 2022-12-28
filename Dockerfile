FROM node:lts-alpine as build
ENV NODE_ENV=production PORT=3000
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install --production --silent && mv node_modules ../
COPY /app .


FROM node:15-alpine
COPY --from=build /usr/src/app /
EXPOSE 3000
CMD ["node", "server.js"]
