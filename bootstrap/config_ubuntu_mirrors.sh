
PACKAGE_MIRROR="au"
PACKAGE_PAT="s|http://us.|http://${PACKAGE_MIRROR}.|g"

sed -i $PACKAGE_PAT /etc/apt/sources.list
