
PACKAGE_MIRROR="au"
PACKAGE_PAT="s|http://us.|http://${PACKAGE_MIRROR}.|g"

SP=/etc/apt/sources.list

echo "${SP} before: $(cat ${SP})"

sed -i $PACKAGE_PAT $SP

apt-get -y update
apt-get -y install software-properties-common

add-apt-repository -y universe
add-apt-repository -y  multiverse

apt-get -y update

apt-get -y install apt-utils
sed -i $PACKAGE_PAT $SP

echo "${SP} after: $(cat ${SP})"
