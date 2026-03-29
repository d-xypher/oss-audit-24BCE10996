#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Anshul

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "$HOME/.mozilla")

echo "=========================================="
echo "      Directory Security & Disk Audit"
echo "=========================================="

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, and group using awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Extract size using du and cut
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        printf "%-25s => Permissions: %-20s | Size: %s\n" "$DIR" "$PERMS" "$SIZE"
    else
        echo "$DIR => DOES NOT EXIST on this system."
    fi
done

echo "------------------------------------------"
echo "Note: The ~/.mozilla directory holds Firefox"
echo "profiles. It must remain strictly owned by the"
echo "user to prevent security breaches."
echo "=========================================="
