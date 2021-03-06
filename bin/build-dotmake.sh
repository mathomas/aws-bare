#!/bin/bash

echo 'Please fill in the config settings to store in your .make'
echo
read -p 'Application: ' app
read -p 'Domain: ' domain
read -p 'Your e-mail: ' email
read -p 'Environment (tst, dev, stg, prd): ' env
read -p 'AWS SSH keyname: ' keyname
read -p 'Your name suffix (firstlastname): ' name_suffix
read -p 'AWS Profile: ' profile
read -p 'Project: ' project
read -p 'AWS region: ' region
echo

cat << EOF > .make
APP = ${app}
DOMAIN = ${domain}
EMAIL = ${email}
ENV = ${env}
KEY_NAME = ${keyname}
NAME_SUFFIX = ${name_suffix}
PROFILE = ${profile}
PROJECT = ${project}
REGION = ${region}
EOF

echo 'Saved .make!'
echo
