#!/bin/bash

user=$1

# Check if username was provided
if [ -z "$user" ]; then
  echo "Usage: $0 username"
  exit 1
fi

# Check if user exists
if id "$user" &>/dev/null; then
  home_dir="/home/$user"
  backup_dir="/home/${user}_backup"

  echo "Backing up $home_dir to $backup_dir"
  sudo rsync -a "$home_dir/" "$backup_dir/"

  echo "Deleting user: $user"
  sudo deluser "$user"

  echo "Removing original home directory: $home_dir"
  sudo rm -rf "$home_dir"

  echo "✅ User '$user' deleted and home directory backed up to '$backup_dir'"
else
  echo "❌ User '$user' does not exist."
  exit 1
fi
