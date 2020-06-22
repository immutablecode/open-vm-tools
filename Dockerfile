FROM registry.fedoraproject.org/fedora-minimal:33

ENV SYSTEMD_IGNORE_CHROOT=1

RUN microdnf -y --setopt=tsflags=nodocs install file open-vm-tools perl net-tools iproute systemd && \ 
    microdnf clean all 

CMD /usr/bin/vmtoolsd
