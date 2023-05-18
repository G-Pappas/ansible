#!/bin/bash

# Prompt for username
read -p "Enter username (default: ansible): " username
username=${username:-ansible} # Use default value if empty

# Create user
sudo useradd $username
echo "User created: $username"

# Prompt for password
read -s -p "Enter password for $username: " password
echo

# Set password for user
echo "$username:$password" | sudo chpasswd

# Set default shell to bash
sudo chsh -s /bin/bash $username

# Create sudoers file for ansible user
sudo bash -c 'echo "ansible ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/ansible'

# Set ownership and permissions for sudoers file
sudo chown root:root /etc/sudoers.d/ansible
sudo chmod 440 /etc/sudoers.d/ansible

echo "Setup completed successfully."
