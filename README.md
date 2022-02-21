# Linode Machine

## systemctl

Systemctl is used to manage services. To enable a service, for example caddy:

```shell
sudo ./export_service caddy
# To run the service continuously.
sudo systemctl enable caddy
# Check the status.
systemctl status caddy.service
```

## Caddy

Caddy is a service that implements a reverse proxy and automatic SSl/HTTPS
support. The config is at Caddyfile.

```shell
# From root of repo.
./caddy.sh
```

