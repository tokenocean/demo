FROM node:17-alpine3.13

ARG NODE_ENV=production
ENV NODE_ENV $NODE_ENV
ENV NODE_OPTIONS --openssl-legacy-provider

RUN apk add git ffmpeg python3 build-base vips-dev curl
RUN npm i -g pnpm

WORKDIR /app
COPY package.json .

RUN pnpm install

COPY . .

RUN chmod +x create-config.sh
RUN ./create-config.sh -c adLXnY0tVUN9pDsPmrDZ

CMD ["pnpm", "start"]
