# registry_mirror

## Dependencies
- Requires httpd-tools package for `htpasswd` binary.

## Instructions
Either use the start/stop scripts or use the `registry_mirror.service` systemd unit file.  Copy this to /etc/systemd/system and launch with `systemctl enable --now registry_mirror.service`.
