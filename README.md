# Linode Machine

## Quickstart

```shell
sudo ./install_all.sh
sudo ./setup_services.sh
```

## systemctl

Systemd is used to bring up services.

* Status - systemctl status <service>
* Detailed Status - sudo systemctl status <service>
* Logs - sudo journalctl -u <service>

## Caddy

Reverse proxy service with automatic SSL/HTTPS support. Caddy receives external
requests and routes them to the appropriate port.

## Hugo

Static site generator.

## Jupyterlab Server

Interactive development for Python.