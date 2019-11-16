#!/bin/sh
ssh-keygen -t ed25519 -f /opt/etc/ssh/ssh_host_ed25519_key
ssh-keygen -t ecdsa -f /opt/etc/ssh/ssh_host_ecdsa_key
# ssh-keygen -t rsa -f /opt/etc/ssh/ssh_host_rsa_key
