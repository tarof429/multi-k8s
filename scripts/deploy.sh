echo "Running deploy.sh"

if [ "$#" -ne 1 ]; then
    echo "deploy.sh: Missing git revision"
    exit 1
fi

GIT_REVISION=$1


echo "Git revision during deployment phase is '$GIT_REVISION'"

# docker build -t tarof429/multi-client -t tarof429/multi-client-$GIT_REVISION -f ./client/Dockerfile ./client
# docker build -t tarof429/multi-server -t tarof429/multi-server-$GIT_REVISION -f ./server/Dockerfile ./server
# docker build -t tarof429/multi-worker -t tarof429/multi-worker-$GIT_REVISION -f ./worker/Dockerfile ./worker
# docker push tarof429/multi-client 
# docker push tarof429/multi-client-$GIT_REVISION 
# docker push tarof429/multi-server
# docker push tarof429/multi-server-$GIT_REVISION 
# docker push tarof429/multi-worker
# docker push tarof429/multi-worker-$GIT_REVISION 
# kubectl apply -f k8s
# kubectl set image deployments/server-deployment server=tarof429/multi-server-$GIT_REVISION
