#!/bin/bash

# Create the ansible directory
sudo mkdir /etc/ansible

# Create an empty inventory file
sudo touch /etc/ansible/hosts

# Set the owner to the specified user (default: ansible)
read -p "Enter the username (default: ansible): " username
username=${username:-ansible}
sudo chown $username /etc/ansible/hosts

# Set permissions to allow only the owner to view or change the file
sudo chmod 600 /etc/ansible/hosts

# Ask for IP addresses and add them to the inventory file
echo "Enter the IP addresses (one per line), type 'end' or 'e' to finish:"
while true; do
    read -p "IP address: " ip
    if [[ $ip == "end" || $ip == "e" ]]; then
        break
    fi
    echo $ip | sudo tee -a /etc/ansible/hosts >/dev/null
done

echo "Inventory file created successfully."
