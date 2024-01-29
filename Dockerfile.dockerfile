# FROM node:18-alpine
FROM public.ecr.aws/docker/library/node:18.19.0-slim
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000
