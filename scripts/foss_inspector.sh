#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Anshul

PACKAGE=${1:-"firefox"}  # Default to firefox if no argument provided

echo "=========================================="
echo "      FOSS Package Inspector"
echo "=========================================="

# Check if package is installed
if command -v "$PACKAGE" &>/dev/null; then
    echo "STATUS: [+] $PACKAGE is installed on this system."
    # Get version if it's firefox
    if [ "$PACKAGE" == "firefox" ]; then
        firefox --version 2>/dev/null
    fi
else
    echo "STATUS: [-] $PACKAGE is NOT installed."
fi

echo "------------------------------------------"
echo "Philosophy Note:"
# Case statement to print philosophy based on package name
case "$PACKAGE" in
    firefox)
        echo "Firefox: A nonprofit browser fighting for an open web."
        ;;
    httpd|apache2)
        echo "Apache: The web server that built the open internet."
        ;;
    mysql)
        echo "MySQL: Open source at the heart of millions of apps."
        ;;
    git)
        echo "Git: The tool Linus Torvalds built when proprietary failed him."
        ;;
    python3)
        echo "Python: A language shaped entirely by community collaboration."
        ;;
    *)
        echo "An open source tool contributing to the vast Linux ecosystem."
        ;;
esac
echo "=========================================="
