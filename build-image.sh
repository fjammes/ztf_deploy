set -e
set -x

IMAGE="ztfsedm/ztf"
docker build docker -t "$IMAGE"
docker push "$IMAGE"
