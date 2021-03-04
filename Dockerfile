FROM node:12-alpine

ENV PORT 3000

# Create app directory
RUN mkdir -p /app
WORKDIR /app

# Copying source files
COPY . /app/

# Installing dependencies
RUN npm install --production --silent

# Building app
RUN npm run build

EXPOSE 3000
CMD ["npm", "run", "start:production"]
