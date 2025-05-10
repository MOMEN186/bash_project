#!/bin/bash

user=$1

if [ -z "$user" ]; then
  echo "❌ Username not provided"
  echo "Usage: $0 <username>"
  exit 1
fi

if id "$user" &>/dev/null; then
  echo "✅ User Info for: $user"
  echo "-----------------------------------------------------"
  id "$user"

  echo "------------------ Last Login ------------------------"
  lastlog -u "$user"
  echo "-----------------------------------------------------"

  echo "--------------- Account Status (chage) ---------------"
  sudo chage -l "$user"
  echo "-----------------------------------------------------"

else
  echo "❌ User '$user' does not exist"
  exit 1
fi
