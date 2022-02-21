#!/bin/bash
run() {
	cd caddy/cmd/caddy
	echo git pull origin
	git pull origin
	go run -exec ./setcap.sh main.go run --config ../../../Caddyfile --watch
}

run
