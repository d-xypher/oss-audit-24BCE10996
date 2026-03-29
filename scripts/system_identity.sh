#!/bin/bash
# Script 1: System Identity Report
# Author: Anshul
# Course: Open Source Software (OSS)
# Description: Gathers and displays system information and OS license

STUDENT_NAME="Anshul"
SOFTWARE_CHOICE="Mozilla Firefox"

echo "=========================================="
echo "      Open Source Audit Report"
echo "      Student: $STUDENT_NAME"
echo "      Software: $SOFTWARE_CHOICE"
echo "=========================================="

# Extract OS Name
if [ -f /etc/os-release ]; then
    OS_NAME=$(grep "^PRETTY_NAME" /etc/os-release | cut -d'"' -f2)
else
    OS_NAME=$(uname -o)
fi

# Gather System info via command substitution
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE_TIME=$(date '+%Y-%m-%d %H:%M:%S')

echo "OS Distribution : $OS_NAME"
echo "Kernel Version  : $KERNEL"
echo "Current User    : $USER_NAME"
echo "Home Directory  : $HOME"
echo "System Uptime   : $UPTIME"
echo "Current Date    : $DATE_TIME"
echo "------------------------------------------"
echo "LICENSE NOTICE: The Linux kernel running this"
echo "system is licensed under the GNU General Public"
echo "License v2 (GPLv2)."
echo "=========================================="
