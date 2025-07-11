#!/bin/bash

# Bazarovac GitHub Pages Deployment Script

echo "🚀 Building Bazarovac..."

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