#!/bin/bash

# Bazarovac GitHub Pages Deployment Script

echo "🚀 Deploying Bazarovac to GitHub Pages..."

# Check if bazarovac.html exists
if [ ! -f "bazarovac.html" ]; then
    echo "❌ Error: bazarovac.html not found!"
    exit 1
fi

# Create dist folder
echo "📁 Creating dist folder..."
rm -rf dist
mkdir -p dist

# Copy bazarovac.html to dist/index.html
echo "📋 Copying bazarovac.html to dist/index.html..."
cp bazarovac.html dist/index.html

echo "📝 Contents of dist folder:"
ls -la dist/

# Deploy dist folder to gh-pages
echo "🌐 Deploying dist folder to GitHub Pages..."
npx gh-pages -d dist

echo "✅ Deployment complete!"
echo "🔗 Your site will be available at: https://jhrdina.github.io/bazarovac"