#!/bin/sh

# From: https://github.com/EliasKotlyar/Xiaomi-Dafang-Hacks/issues/542#issuecomment-405309831

# Mount/Start Entware
mkdir -p /opt
mount -o noatime -t ext4 /dev/mmcblk0p2 /opt || exit 1


# Start Optware Background processes
/opt/etc/init.d/rc.unslung start

# Add Entware Profile in Global Profile
if [ -f /opt/etc/profile ]; then
	if grep  -qF  '/opt/etc/profile' /etc/profile; then
		echo "Confirmed: Entware Profile in Global Profile"
	else
		echo "Adding: Entware Profile in Global Profile"
		# http://www.guguncube.com/2140/unix-set-a-multi-line-text-to-a-string-variable-or-file-in-bash
		echo '
# Load Entware Profile
. /opt/etc/profile
' >> /etc/profile
	fi
fi
