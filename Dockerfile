FROM node:18-alpine3.16

RUN mkdir -p /var/www/sampleproject
WORKDIR /var/www/sampleproject
COPY ./ /var/www/sampleproject


RUN npm run build

EXPOSE 3000

ENTRYPOINT ["npm", "run", "start"]