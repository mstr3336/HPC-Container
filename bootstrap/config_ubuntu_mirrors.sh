
PACKAGE_MIRROR="au"
PACKAGE_PAT="s|http://us.|http://${PACKAGE_MIRROR}.|g"

SP=/etc/apt/sources.list

echo "${SP} before: $(cat ${SP})"
 
sed -i $PACKAGE_PAT $SP

echo "${SP} after: $(cat ${SP})"

apt-get update
