set -e
set -x

SERVER=$(openstack server list | grep ztf | grep -v gateway | grep -v orchestra | cut -f3 -d'|')

VOLUME_NAME="ztf"

for s in $SERVER; do
    openstack server add volume "$s" "$VOLUME_NAME"
done

