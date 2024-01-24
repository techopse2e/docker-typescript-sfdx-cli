FROM node:18-alpine
WORKDIR /app
RUN apk update
RUN apk add git
RUN npm install -g typescript
RUN npm install -g tsx
RUN npm install @salesforce/cli -g
RUN echo y | sfdx plugins:install sfdx-git-delta
