#!/bin/bash

set -e
apt update -y
cd /var/www/html
rm -rf *
echo "Code BeforeInstall event script ran."
