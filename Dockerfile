FROM node:18-alpine
LABEL "repository"="https://github.com/anothrNick/github-tag-action"
LABEL "homepage"="https://github.com/anothrNick/github-tag-action"
LABEL "maintainer"="Nick Sjostrom"

RUN echo "https://uk.alpinelinux.org/alpine/v3.17/main" > /etc/apk/repositories
RUN apk --no-cache add bash git curl jq && npm install -g semver

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
