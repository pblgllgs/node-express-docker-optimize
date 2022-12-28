FROM node:15 as build
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "/app/server.js", "./"]
RUN npm install


FROM node:15-alpine
ENV NODE_ENV=production PORT=3000
WORKDIR /app
COPY --from=build /usr/src/app /app
EXPOSE 3000
CMD ["node", "server.js"]
