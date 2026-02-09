#!/bin/bash

# Monthly Bills Tracker - Cleanup Script
# Removes downloaded zip files and extracted folders from Downloads

echo "🧹 Cleaning up Downloads folder..."
echo "=================================="
echo ""

# Count files before cleanup
zip_count=$(ls ~/Downloads/monthly-bills-premium*.zip 2>/dev/null | wc -l)
folder_count=$(ls -d ~/Downloads/monthly-bills-premium* 2>/dev/null | grep -v ".zip" | wc -l)

if [ $zip_count -eq 0 ] && [ $folder_count -eq 0 ]; then
    echo "✨ Downloads folder is already clean!"
    echo "No monthly-bills files found."
    exit 0
fi

echo "Found:"
[ $zip_count -gt 0 ] && echo "  📦 $zip_count zip file(s)"
[ $folder_count -gt 0 ] && echo "  📁 $folder_count folder(s)"
echo ""

# Remove zip files
if [ $zip_count -gt 0 ]; then
    echo "Removing zip files..."
    rm -f ~/Downloads/monthly-bills-premium*.zip
fi

# Remove folders
if [ $folder_count -gt 0 ]; then
    echo "Removing folders..."
    rm -rf ~/Downloads/monthly-bills-premium
    rm -rf ~/Downloads/monthly-bills-premium\ *
fi

echo ""
echo "✅ Cleanup complete!"
echo "Downloads folder is now clean."
