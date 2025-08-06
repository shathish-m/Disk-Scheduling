# Wi-Fi Connection Automation Script

## Overview
This Bash script automates the process of connecting to a Wi-Fi network on Linux (Ubuntu 64-bit) machines using the `nmcli` command-line tool. It checks the Wi-Fi status, turns it on if disabled, lists available Wi-Fi networks, and connects to a specified Wi-Fi SSID using provided credentials.

This script helps simplify Wi-Fi connection management and demonstrates basic network automation with shell scripting and `nmcli`.


## Features
- Checks if Wi-Fi is enabled and turns it on if disabled.
- Lists available Wi-Fi networks in the terminal.
- Checks if already connected to the specified SSID.
- Connects to the specified Wi-Fi network with the provided password.
- Provides status messages to indicate the progress and result.


## Prerequisites
- Linux OS with NetworkManager (`nmcli`) installed (Ubuntu or compatible).
- Bash shell.
- Access rights to manage network connections.


**Make the script executable:**
$ chmod +x wifi_connect.sh


**Configure Wi-Fi credentials:**
Open the script and replace the placeholders with your actual Wi-Fi SSID and password:


**Run the script:**
./wifi_connect.sh






