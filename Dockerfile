FROM debian:buster-slim

LABEL maintainer="Nami Ops <namiops@gmail.com>"

ENV PORT=1234

RUN apt update && apt install -y netcat

CMD nc -lv $PORT

EXPOSE $PORT
