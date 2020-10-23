#!/bin/bash -e

install -d "${ROOTFS_DIR}/opt/edgepi"

install -v -m 644 files/edgepid.service	"${ROOTFS_DIR}/etc/systemd/system/"

install -v -m 644 files/update "${ROOTFS_DIR}/opt/edgepi/"

on_chroot << EOF
systemctl enable edgepid
EOF
