FROM node:10.23
COPY . .
RUN npm install \
    && npm run build
EXPOSE 3000
ENTRYPOINT npm run start

# FROM node:10.23.0-alpine3.9
# COPY . .
# ENV PYTHONUNBUFFERED=1
# RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
# RUN python3 -m ensurepip
# RUN pip3 install --no-cache --upgrade pip setuptools
# RUN apk add --update ansible
# RUN pip install boto
