#!/bin/bash


# Define the path to the config file
config_file="/etc/ansible/ansible.cfg"

# Check if the config file already exists
if [ -f "$config_file" ]; then
    echo "Config file already exists at $config_file."
else
    echo "[defaults]" | sudo tee "$config_file" >/dev/null

    # Prompt for the inventory file path
    read -rp "Enter the inventory file path (default: /etc/ansible/hosts): " inventory_path
    inventory_path=${inventory_path:-/etc/ansible/hosts}
    echo "inventory = $inventory_path" | sudo tee -a "$config_file" >/dev/null

    # Prompt for the remote user
    read -rp "Enter the remote user (default: ansible): " remote_user
    remote_user=${remote_user:-ansible}
    echo "remote_user = $remote_user" | sudo tee -a "$config_file" >/dev/null

    echo "Config file created at $config_file."
fi

# Run ansible all -m ping and capture the output
output=$(ansible all -m ping)

# Check if the output contains the word "SUCCESS"
if grep -q "SUCCESS" <<< "$output"; then
    # Print a funny success message in yellow
    echo -e "\033[33mSuccess! Everything is working fine.\033[0m"
    echo -e "$output"
else
    # Print an error message in red along with the error output
    echo -e "\033[31mOh, shit! Something went wrong:\n$output\033[0m"
fi
