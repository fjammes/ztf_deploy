set -e
set -x

DIR=$(cd "$(dirname "$0")"; pwd -P)

CONFIGMAP_DIR="${DIR}/configmap"

kubectl delete configmap --ignore-not-found=true config-run
kubectl create configmap --from-file="$CONFIGMAP_DIR" config-run

kubectl apply -f "${DIR}/yaml/job.yaml"
