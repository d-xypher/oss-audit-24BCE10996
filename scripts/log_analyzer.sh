#!/bin/bash
# Script 4: Log File Analyzer
# Author: Anshul
# Usage: ./log_analyzer.sh /var/log/syslog error

LOGFILE=${1:-"/var/log/syslog"}
KEYWORD=${2:-"error"}
COUNT=0

echo "=========================================="
echo "      Log File Analyzer"
echo "=========================================="

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found or inaccessible."
    exit 1
fi

echo "Scanning $LOGFILE for keyword: '$KEYWORD'..."

# while-read loop as per requirements
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "------------------------------------------"
echo "RESULT: Keyword '$KEYWORD' found $COUNT times."
echo "------------------------------------------"
echo "Last 3 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 3
echo "=========================================="
