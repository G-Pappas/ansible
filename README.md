# Fancy README for GitHub

## Description

Welcome to the Fancy README for the Ansible Automation Repository! This repository contains helpful bash scripts for user management and inventory configuration using Ansible. The scripts included are:

### createAnsibleUser

This bash script enables you to effortlessly create a user named "ansible" (default) with sudo privileges, allowing them to execute commands without password authentication.

### addHosts

This bash script simplifies the process of configuring the inventory file by providing an easy method to add hosts to it.

## Prerequisites

To utilize these scripts, ensure you have the following prerequisites in place:

- A Unix-based operating system (e.g., Linux, macOS)
- Bash shell environment
- Ansible installed

## Usage

Follow the steps below to use each script effectively:

### 👤 createAnsibleUser

1. Open a terminal.
2. Navigate to the directory containing the `createAnsibleUser` script.
3. Execute the script by running the following command:

   ```bash
   ./createAnsibleUser  
 4. The script will create a user named "ansible" (unless specified otherwise) with sudo privileges.
 5. Upon successful execution, the "ansible" user will be able to run commands without requiring a password.

### 💻 addHosts
1. Open a terminal.
2. Navigate to the directory containing the addHosts script
3. Execute the script by running the following command:
   ```bash
   ./addHosts
4. The script will guide you through the process of adding hosts to the inventory file.
5. Follow the prompts and provide the necessary information to add hosts successfully.

## Contributing
Contributions to this repository are always welcome! If you find any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request.

## Acknowledgments
We would like to express our gratitude to the open-source community for their continuous support and contributions.

Happy automating with Ansible! 🚀
