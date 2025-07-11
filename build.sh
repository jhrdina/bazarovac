#!/bin/bash

# Bazarovac Build Script

echo "🏗️ Building Bazarovac..."

# Create dist folder
echo "📁 Creating dist folder..."
rm -rf dist
mkdir -p dist

# Copy bazarovac.html to dist/index.html
echo "📋 Copying bazarovac.html to dist/index.html..."
cp bazarovac.html dist/index.html

# Create CNAME file
echo "📝 Creating CNAME file..."
echo "bazary.hrdinajan.cz" > dist/CNAME

echo "📝 Contents of dist folder:"
ls -la dist/

echo "✅ Build complete!"