#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Anshul

echo "=========================================="
echo "   Open Source Manifesto Generator"
echo "=========================================="
echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Composing the paragraph using string concatenation and outputting to file
echo "--------------------------------------------------" > "$OUTPUT"
echo "             MY OPEN SOURCE MANIFESTO             " >> "$OUTPUT"
echo "--------------------------------------------------" >> "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "Author: $(whoami)" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I believe the software ecosystem relies on sharing." >> "$OUTPUT"
echo "Every day, I rely on tools like $TOOL to learn" >> "$OUTPUT"
echo "and create. To me, open source is about $FREEDOM." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "In the future, I pledge to build a $BUILD and" >> "$OUTPUT"
echo "release it under a free license so that others" >> "$OUTPUT"
echo "may stand on my shoulders, just as I stand on" >> "$OUTPUT"
echo "the shoulders of giants." >> "$OUTPUT"
echo "--------------------------------------------------" >> "$OUTPUT"

echo ""
echo "Manifesto successfully generated and saved to: $OUTPUT"
echo ""
echo "Here is what you wrote:"
cat "$OUTPUT"
echo "=========================================="
