#!/bin/bash

user=$1

# Check if username was provided
if [ -z "$user" ]; then
  echo "Usage: $0 username"
  exit 1
fi

# Check if user exists
if id "$user" &>/dev/null; then
sudo passwd -l "$user"
else
  echo "❌ User '$user' does not exist."
  exit 1
fi
