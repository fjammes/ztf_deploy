set -e
set -x

# Uncomment for debugging purpose
# tail -f /dev/null

WORKDIR="/config-run"
# . "${WORKDIR}/get_data.sh"
script --return --quiet --command="sh ${WORKDIR}/compute.sh"

