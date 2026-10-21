FROM node:18-alpine

RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

WORKDIR /app

COPY --chown=appuser:appgroup package*.json ./
RUN npm install

COPY --chown=appuser:appgroup . .

EXPOSE 3000
CMD ["npm", "start"]
