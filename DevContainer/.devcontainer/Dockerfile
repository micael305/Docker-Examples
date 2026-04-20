FROM mcr.microsoft.com/devcontainers/javascript-node:1-22-bookworm

WORKDIR /workspaces/devcontainer

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]