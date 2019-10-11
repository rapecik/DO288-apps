#!/bin/sh

# source /usr/local/etc/ocp4.config

oc new-app --template certification-premarement-pecikr/php-mysql-ephemeral \
  -p NAME=quotesapi \
  -p APPLICATION_DOMAIN=quote-pecikr.apps.oshift4.softec.sk \
  -p SOURCE_REPOSITORY_URL=https://github.com/rapecik/DO288-apps \
  -p CONTEXT_DIR=quotes \
  -p DATABASE_SERVICE_NAME=quotesdb \
  -p DATABASE_USER=user1 \
  -p DATABASE_PASSWORD=mypa55 \
  --name quotes

