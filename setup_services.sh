#!/bin/bash
cd $(dirname "$0")

setup_service() {
	SERVICE=$1
    echo "--------------------"
    echo "Enabling ${SERVICE}..."
    echo "--------------------"
    ROOT_DIR=$(pwd)
    SRC_TEMPLATE=systemctl/$1.service
    DST=/etc/systemd/system/$1.service
    echo "Exporting ${SRC_TEMPLATE} to ${DST}"
    sudo sed "s~WMEDRANO_ROOT~${ROOT_DIR}~g" $SRC_TEMPLATE >$DST
    cat $DST
    sudo systemctl daemon-reload
    sudo systemctl disable  ${SERVICE}
    sudo systemctl enable ${SERVICE}
    sudo systemctl restart ${SERVICE}
}

setup_service caddy
