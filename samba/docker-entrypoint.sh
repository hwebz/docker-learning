#!/bin/bash

# Get the env variables values: smbuser, smbgroup, password
var_smbuser=${smbuser:-smbuser}
var_smbpassword=${password:-pass}

var_smbgroup="smbgroup"

useradd $var_smbuser
groupadd $var_smbgroup
useradd -a -G $var_smbgroup $var_smbuser

echo "user: $var_smbuser /gr $var_smbgroup";
echo "pass: $var_smbpassword";

(echo "$var_smbpassword"; echo "$var_smbpassword") | smbpasswd -s -a $var_smbuser

mkdir -p /data
chmod 755 /data
chown $var_smbuser:$var_smbgroup /data

smbd --foreground --log-stdout
# --debug-level=2