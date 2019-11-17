#! /bin/bash

git clone https://github.com/nanaones/psycopg-test &&\
# git clone https://github.com/vishnubob/wait-for-it &&\

## get env if run as docker-compose
## TODO add if connectPgcontainer, connect elasticContainer and  fluentdContainer 

# wait-for-it
mkdir /logs &&\
ls &&\
cat /run/config/config.ini &&\
cd  /psycopg-test/ &&\
ls &&\
cp /run/config/config.ini /psycopg-test/config/config.ini &&\
python3 -m pip install -r requirements.txt &&\
python3 main.py  $loop