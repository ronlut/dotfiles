#!/usr/bin/env bash
# Disable Sublime upgrade dialog on macOS unless it already is disabled

# exit if sublime is not installed
type subl >/dev/null 2>&1 || exit

HOSTS_FILE=/etc/hosts
SCRIPT_NAME=$(basename "$0")

read -r -d '' ADDED_HOSTS <<-EOF	
	\n# Added by ${SCRIPT_NAME}:
	127.0.0.1 license.sublimehq.com
	# End of section
	EOF

timestamp=$(date "+%Y-%m-%d-%H%M%S")

if grep -q "license.sublimehq.com" "$HOSTS_FILE"; then
	echo "Sublime upgrade dialog is already disabled."
else
	cp $HOSTS_FILE ${HOSTS_FILE}.${timestamp}.bak
	echo -e "$ADDED_HOSTS" | cat $HOSTS_FILE - > ${HOSTS_FILE}.new
	sudo mv ${HOSTS_FILE}.new $HOSTS_FILE

	echo "Sublime upgrade dialog is now disabled."
fi
