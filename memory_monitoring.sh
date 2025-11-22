#!/bin/bash
file="/etc/shadow"
perms=$(ls -l $file | awk '{print $1}')
echo "Permissions for $file: $perms"
if [[ $perms =~ ".*r..r..r.." ]]; then
  echo "Warning: $file is world-readable! This is insecure."
else
  echo "$file protected."
fi
