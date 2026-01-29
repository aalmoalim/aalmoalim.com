#!/bin/bash

# Quick deployment script for aalmoalim.com
# This script helps you deploy to GitHub Pages

echo "🚀 aalmoalim.com Deployment Script"
echo "===================================="
echo ""

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "❌ Git not initialized. Run: git init"
    exit 1
fi

# Check if remote is set
if ! git remote | grep -q origin; then
    echo "📝 Setting up Git repository..."
    echo ""
    echo "Please provide your GitHub repository URL:"
    echo "Example: https://github.com/yourusername/aalmoalim.git"
    read -p "Repository URL: " repo_url
    
    if [ -z "$repo_url" ]; then
        echo "❌ Repository URL is required"
        exit 1
    fi
    
    git remote add origin "$repo_url"
    echo "✅ Remote added: $repo_url"
fi

# Add all files
echo ""
echo "📦 Staging files..."
git add .

# Commit
echo "💾 Committing changes..."
git commit -m "Update website: SEO optimizations and content updates" || echo "No changes to commit"

# Push
echo ""
echo "⬆️  Pushing to GitHub..."
git push -u origin main || git push -u origin master

echo ""
echo "✅ Deployment complete!"
echo ""
echo "Next steps:"
echo "1. Go to your GitHub repository"
echo "2. Settings → Pages"
echo "3. Select 'main' branch"
echo "4. Your site will be live at: https://YOUR_USERNAME.github.io/REPO_NAME/"
echo ""
echo "Don't forget to:"
echo "- Submit sitemap to Google Search Console"
echo "- Test your site with PageSpeed Insights"
echo "- Set up custom domain (optional)"

