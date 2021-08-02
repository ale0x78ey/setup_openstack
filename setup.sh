#!/bin/bash

. ./roles/setup_libvirt/setup.sh

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" > /dev/null && pwd)" && \
  pip install -r "${SCRIPT_DIR}/requirements.txt"
