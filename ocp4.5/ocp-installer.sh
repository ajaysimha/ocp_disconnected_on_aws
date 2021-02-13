export OCP_RELEASE=4.5.25
export ARCHITECTURE=x86_64
export LOCAL_REGISTRY='ip-172-31-27-220.us-east-2.compute.internal:5000'
export LOCAL_REPOSITORY='ocp/openshift4'
export PRODUCT_REPO='openshift-release-dev'
export LOCAL_SECRET_JSON='/root/ocp4.5/pull-secret.json'
export RELEASE_NAME="ocp-release"

oc adm release extract -a ${LOCAL_SECRET_JSON} --command=openshift-install "${LOCAL_REGISTRY}/${LOCAL_REPOSITORY}:${OCP_RELEASE}-${ARCHITECTURE}"
