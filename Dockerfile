FROM node:18.16.0 AS build

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./

RUN npm install
COPY . ./
RUN npm run build


LABEL org.opencontainers.image.source = "https://github.com/hinco114/hinco-wedding"
FROM nginx:1.21.1-alpine

COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80
