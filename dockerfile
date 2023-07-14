FROM node:18-alpine as base

WORKDIR /kanap
COPY package*.json /
EXPOSE 3000

FROM base
RUN npm ci
COPY . /
CMD ["npm", "start"]