#!/bin/bash
cd $(dirname "$0")
bash build_all.sh
sudo bash setup_services.sh