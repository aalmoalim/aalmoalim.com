#!/bin/bash

# Script to push your code to GitHub
# Replace YOUR_USERNAME and REPO_NAME with your actual values

echo "🚀 Pushing to GitHub..."
echo ""

# Replace these with your actual GitHub username and repository name
GITHUB_USERNAME="YOUR_USERNAME"
REPO_NAME="aalmoalim"

# Add remote (if not already added)
git remote remove origin 2>/dev/null
git remote add origin "https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git"

# Push to GitHub
echo "Pushing to: https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git"
git push -u origin main

echo ""
echo "✅ Done! Now go to:"
echo "   https://github.com/${GITHUB_USERNAME}/${REPO_NAME}/settings/pages"
echo "   Enable GitHub Pages → Select 'main' branch → Save"
echo ""
echo "Your site will be live at:"
echo "   https://${GITHUB_USERNAME}.github.io/${REPO_NAME}/"

