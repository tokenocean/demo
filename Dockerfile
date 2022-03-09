FROM node:17-alpine

ARG NODE_ENV=production
ENV NODE_ENV $NODE_ENV

RUN apk add git python3 build-base curl
RUN npm i -g pnpm

RUN apk add git
RUN npm i -g pnpm

COPY package.json .
RUN NODE_ENV=development pnpm i

COPY . .

RUN chmod +x create-config.sh
RUN ./create-config.sh -c adLXnY0tVUN9pDsPmrDZ

RUN NODE_ENV=development pnpm i --unsafe-perm
RUN pnpm build

CMD ["node", "build"]
