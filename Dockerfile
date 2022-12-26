FROM node:18-alpine
WORKDIR /app
RUN npm install -g typescript
RUN npm install -g tsx
RUN npm install -g sfdx-cli
RUN echo y | sfdx plugins:install sfdx-git-delta
