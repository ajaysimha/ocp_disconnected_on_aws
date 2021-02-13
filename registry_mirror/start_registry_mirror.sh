#!/bin/bash

PWD=`pwd`
source environment

echo "############################################"
echo "# Starting Registry Mirror"
echo "#"
echo "#"

podman run -dt --pod new:registry_mirror --name registry --net=host \
    -v $REGISTRY_MIRROR_PATH/data:/var/lib/registry:z \
    -v $REGISTRY_MIRROR_PATH/auth:/auth:z \
    -e REGISTRY_AUTH=htpasswd \
    -e REGISTRY_AUTH_HTPASSWD_REALM=Registry \
    -e REGISTRY_HTTP_SECRET=ALongRandomSecretForRegistry \
    -e REGISTRY_AUTH_HTPASSWD_PATH=/auth/htpasswd \
    -v $REGISTRY_MIRROR_PATH/certs:/certs:z \
    -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/domain.crt \
    -e REGISTRY_HTTP_TLS_KEY=/certs/domain.key \
    quay.io/dcain/registry:2

podman logs registry

podman pod ps

echo "#"
echo "# Verify whether the registry mirror is up, by using the following command"
echo "# curl -u $HTTP_AUTH_USERNAME:$HTTP_AUTH_PASSWORD -k https://$CERT_COMMON_NAME:5000/v2/_catalog"
echo "#"
echo "############################################"
