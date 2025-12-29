FROM node:24
WORKDIR /usr/local/app
COPY prisma .
COPY package*.json .
RUN npm install
COPY . .
RUN npm run build
EXPOSE 8080
CMD ["npm", "start"]