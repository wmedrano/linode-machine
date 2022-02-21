#!/bin/bash
cd $(dirname "$0")

build_caddy() {
    echo "--------------------"
    echo "Building Caddy..."
    echo "--------------------"
    echo "git pull origin"
    (cd caddy && git pull origin)
    echo "go build main.go"
    (cd caddy && go build cmd/caddy/main.go) || exit
}

build_caddy
