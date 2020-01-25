#!/bin/bash

set -e

: "${SERVER_VERSION:=1.12.2}"
: "${SERVER_PASSWORD:=}"
: "${MC_USERNAME:=}"
: "${MC_PASSWORD:=}"


cat > secrets.json <<EOL
{
    "username":"${MC_USERNAME}",
    "password":"${MC_PASSWORD}"
}
EOL

cat > config.json <<EOL
{
    "ports":{
        "minecraft":25565,
        "web":80
    },
    "openBrowserOnStart": false,
    "password":"${SERVER_PASSWORD}",
    "MCversion":"${SERVER_VERSION}"
}
EOL

npm start