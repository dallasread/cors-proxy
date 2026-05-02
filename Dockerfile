FROM node:lts-alpine
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci --omit=dev
COPY . .
ENV PORT=80
EXPOSE 80
USER node
CMD ["npm", "start"]
