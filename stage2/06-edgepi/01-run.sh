#!/bin/bash -e

install -v -m 644 files/edgepid.service	"${ROOTFS_DIR}/etc/systemd/system/"

install -v -m 644 files/edgepiup		"${ROOTFS_DIR}/usr/bin/"

on_chroot << EOF
systemctl daemon-reload
systemctl enable edgepid
EOF
