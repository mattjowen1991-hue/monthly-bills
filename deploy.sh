#!/bin/bash

# Monthly Bills Tracker - Quick Deploy Script
# This script helps you quickly update and deploy your bills tracker

set -e  # Exit on error

echo "🚀 Monthly Bills Tracker - Deployment Script"
echo "=============================================="
echo ""

# Check if we're in a git repository
if [ ! -d .git ]; then
    echo "❌ Error: Not in a git repository"
    echo "💡 Initialize with: git init"
    exit 1
fi

# Check for uncommitted changes
if [ -n "$(git status --porcelain)" ]; then
    echo "📝 Changes detected in repository"
    echo ""
    git status --short
    echo ""
    
    # Ask for commit message
    read -p "📋 Enter commit message (or press Enter for 'Update bills tracker'): " commit_msg
    
    if [ -z "$commit_msg" ]; then
        commit_msg="Update bills tracker"
    fi
    
    # Stage all changes
    echo "➕ Staging changes..."
    git add .
    
    # Commit
    echo "💾 Committing changes..."
    git commit -m "$commit_msg"
    
    echo "✅ Changes committed!"
else
    echo "✨ No changes to commit - repository is clean"
fi

# Push to GitHub
echo ""
echo "🌐 Pushing to GitHub..."
git push origin main

echo ""
echo "✅ Deployment complete!"
echo "🌍 Your app should be live at: https://mattjowen1991-hue.github.io/monthly-bills/"
echo ""
echo "💡 Tip: It may take 1-2 minutes for GitHub Pages to update"

# Clean up downloaded zip files from Downloads
echo ""
echo "🧹 Cleaning up Downloads folder..."
rm -f ~/Downloads/monthly-bills-premium*.zip 2>/dev/null
rm -rf ~/Downloads/monthly-bills-premium 2>/dev/null
rm -rf ~/Downloads/monthly-bills-premium\ * 2>/dev/null
echo "✨ Downloads folder cleaned!"

