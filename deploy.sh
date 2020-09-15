#!/usr/bin/env bash

echo "Git revision during deployment phase is '$SHA'"

docker build -t tarof429/multi-client:latest -t tarof429/multi-client-$SHA -f ./client/Dockerfile ./client
docker build -t tarof429/multi-server:latest -t tarof429/multi-server-$SHA -f ./server/Dockerfile ./server
docker build -t tarof429/multi-worker:latest -t tarof429/multi-worker-$SHA -f ./worker/Dockerfile ./worker
# docker push tarof429/multi-client 
# docker push tarof429/multi-client-$GIT_REVISION 
# docker push tarof429/multi-server
# docker push tarof429/multi-server-$GIT_REVISION 
# docker push tarof429/multi-worker
# docker push tarof429/multi-worker-$GIT_REVISION 
# kubectl apply -f k8s
# kubectl set image deployments/server-deployment server=tarof429/multi-server-$GIT_REVISION
