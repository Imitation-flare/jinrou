FROM node:8
ARG CACHEBUST=1
MAINTAINER uhyo
WORKDIR /jinrou
COPY ./package.json ./package-lock.json ./
RUN npm install --production
COPY ./front ./front/
RUN cd front && npm install && npm run production-build
COPY ./prizedata ./prizedata/
COPY ./public ./public/
COPY ./app.js ./
COPY ./manual ./manual/
COPY ./client ./client/
COPY ./server ./server/
COPY ./language ./language/
COPY ./config ./config/
USER node
EXPOSE 8800
CMD ["node", "app.js"]
