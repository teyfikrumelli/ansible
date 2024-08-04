#!/bin/bash

# Ensure we're in the correct directory
cd "$(dirname "$0")"

# Check if Makefile exists
if [ ! -f "Makefile" ]; then
  echo "Makefile not found in the current directory."
  exit 1
fi

make install-ansible
make install-dependencies
make setup

echo "Setup completed successfully."
