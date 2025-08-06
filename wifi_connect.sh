#!/bin/bash

# Check Wi-Fi status
wifi_status=$(nmcli radio wifi)

# Check if Wi-Fi is turned off
if [ "$wifi_status" = "disabled" ]; then

# If Wi-Fi is off, turn it on
nmcli radio wifi on
echo "Wi-Fi turned on"

# Wait for 10 seconds before attempting to connect
sleep 10
else
echo "Wi-Fi is already on"
fi

# List available Wi-Fi networks
echo "Available Wi-Fi networks:"
nmcli device wifi list

# Set Wi-Fi credentials
wifi_ssid="AIRTEL_5G"
wifi_password="shathish26"

# Check if the Wi-Fi is already connected
if nmcli -t -f NAME,STATE dev wifi | grep -q "^$wifi_ssid:connected$"; then
echo "Already connected to $wifi_ssid"
else

# Check if the desired network is available
if nmcli device wifi list | grep -q "$wifi_ssid"; then

# Connect to the Wi-Fi network
nmcli device wifi connect "$wifi_ssid" password "$wifi_password"
if [ $? -eq 0 ]; then
echo "Connected to $wifi_ssid"
else
echo "Failed to connect to $wifi_ssid"
fi
else
echo "$wifi_ssid not found among available networks"
fi
fi
