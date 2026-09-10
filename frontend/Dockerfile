FROM node:20-slim

WORKDIR /app

COPY package*.json ./
ENV NODE_TLS_REJECT_UNAUTHORIZED=0
RUN npm install --legacy-peer-deps

COPY . .

EXPOSE 5173

CMD ["npx", "vite", "--host", "0.0.0.0"]