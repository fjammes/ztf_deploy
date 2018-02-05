set -e
set -x

DIR=$(cd "$(dirname "$0")"; pwd -P)

CONFIGMAP_DIR="${DIR}/configmap"

kubectl create configmap --from-file="$CONFIGMAP_DIR/run.sh" config-run

