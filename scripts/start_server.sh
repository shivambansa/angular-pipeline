#!/bin/bash

set -e
systemctl restart apache2
echo "Code ApplicationStart event script ran."
