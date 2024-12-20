FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
COPY nest-cli.json ./
COPY tsconfig.json ./
RUN npm install -g pnpm
RUN pnpm install
RUN pnpm build
EXPOSE 4000
CMD ["pnpm", "start:prod"]