FROM node:13.7

ENV SERVER_VERSION=1.12.2
ENV SERVER_PASSWORD=
ENV MC_USERNAME=
ENV MC_PASSWORD=

EXPOSE 80
EXPOSE 25565
WORKDIR /src

COPY . .

RUN npm install

CMD ./docker-run.sh