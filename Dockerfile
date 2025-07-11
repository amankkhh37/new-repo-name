FROM node:18-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM node:18-alpine
WORKDIR /app
COPY --from=builder /app .
RUN addgroup app && adduser -S app -G app
USER app
EXPOSE 5000
CMD ["npm", "start"]