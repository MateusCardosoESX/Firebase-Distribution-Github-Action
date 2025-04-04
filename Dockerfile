FROM node:20-alpine

WORKDIR /app
COPY . /app

RUN apk update \
    && apk add bash git g++ make python3 \
    && yarn global add firebase-tools@13.3.0

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]

