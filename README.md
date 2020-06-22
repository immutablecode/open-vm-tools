open-vm-tools
=============

A fedora-minimal based open-vm-tools container image for use inside Fedora CoreOS VMware VMs.

Useful as an alternative to installing open-vm-tools on Fedora CoreOS using rpm-ostree (which requires a reboot). 

Only things I personally needed to work were the retrieval of IPs and hostname (achieved with `--net=host`), and graceful restart/shutdown of guest os (achieved with `-v /run/systemd:/run/systemd:ro` and `--pid=host`).

Note there is no need for `--privileged` to meet the above requirements.

```
podman run --name open-vm-tools \
           -v /run/systemd:/run/systemd:ro \
           --pid=host \
           --net=host \
           immutablecode/open-vm-tools:latest
```
