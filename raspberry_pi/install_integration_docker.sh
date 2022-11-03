#!/usr/bin/env bash

wget https://raw.githubusercontent.com/LoSk-p/robonomics-hass-utils/main/raspberry_pi/install_ipfs_arc_dependent.sh
bash install_ipfs_arc_dependent.sh
rm install_ipfs_arc_dependent.sh

echo "

apk add subversion
cd /config
mkdir custom_components
cd custom_components
svn checkout https://github.com/airalab/homeassistant-robonomics-integration/trunk/custom_components/robonomics" | docker exec -i homeassistant bash

echo "Integration downloaded!"