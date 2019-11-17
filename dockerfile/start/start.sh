#! /bin/bash

git clone https://github.com/nanaones/psycopg-test-docker &&\
git cline https://github.com/vishnubob/wait-for-it &&\

## get env if run as docker-compose
## TODO add if connectPgcontainer, connect elasticContainer and  fluentdContainer 

# wait-for-it

cd  /psycopg-test-docker/ &&\
python3 -m pip install -r requirements.txt &&\
python3 main.py  $loop
