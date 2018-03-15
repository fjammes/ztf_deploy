set -e
set -x

DIR=$(cd "$(dirname "$0")"; pwd -P)

CONFIGMAP_DIR="${DIR}/configmap"

kubectl delete configmap --ignore-not-found=true config-run
kubectl create configmap --from-file="$CONFIGMAP_DIR/run" config-run

kubectl delete configmap --ignore-not-found=true config-matplotlib
kubectl create configmap --from-file="$CONFIGMAP_DIR/dot-matplotlib" config-matplotlib

kubectl apply -f "${DIR}/yaml/job.yaml"
