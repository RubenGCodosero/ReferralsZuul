#!/bin/bash
docker rm referrals-gateway -f
docker rmi codosoft/referrals-gateway:v1.0 -f
mvn clean package -DskipTests
#M1
docker build --platform linux/amd64 --tag="codosoft/referrals-gateway:v1.0" .

# docker push codosoft/referralszuul:v1.0  
