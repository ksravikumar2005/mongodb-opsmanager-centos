#!/bin/bash
openssl genrsa -des3 -out myCA.key 2048
openssl req -x509 -new -nodes -key myCA.key -sha256 -days 1825 -out myCA.pem
openssl genrsa -out node1.key 2048
openssl req -new -key node1.key -out node1.csr
cat node1.ext
openssl x509 -req -in node1.csr -CA myCA.pem -CAkey myCA.key -CAcreateserial -out node1.crt -days 1825 -sha256 -extfile ./node1.ext
