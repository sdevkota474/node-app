FROM alpine:3.18
RUN apk update && apk add nodejs npm
WORKDIR app
COPY ./package.json .
COPY ./.env .
RUN npm install dotenv
COPY ./index.js .
EXPOSE 8000
CMD ["node","index.js"]
