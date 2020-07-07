FROM node:lts

RUN apt-get update && apt-get install git -y && npm -g install semantic-release @semantic-release/git @semantic-release/changelog

WORKDIR /srv/app/

ENTRYPOINT ["node", "/usr/local/lib/node_modules/semantic-release/bin/semantic-release.js"]
