FROM node:8
COPY . .
RUN apt-get update || : && apt-get install python -y
RUN apt-get install ansible -y
RUN npm install \
    && npm run build
EXPOSE 3000
ENTRYPOINT npm run start