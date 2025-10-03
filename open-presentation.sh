#!/bin/bash

# CAMEL-AI Toolkits Presentation Launcher
# This script opens the presentation in your default browser

echo "🐫 CAMEL-AI Toolkits Presentation"
echo "================================="
echo ""

# Check if index.html exists
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found!"
    echo "Please run this script from the toolkit-presentation directory."
    exit 1
fi

# Get the absolute path
PRESENTATION_PATH="$(pwd)/index.html"

echo "📂 Opening presentation from: $PRESENTATION_PATH"
echo ""

# Detect OS and open accordingly
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    echo "🍎 Detected macOS - Opening in default browser..."
    open "$PRESENTATION_PATH"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux
    echo "🐧 Detected Linux - Opening in default browser..."
    xdg-open "$PRESENTATION_PATH"
elif [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "cygwin" ]]; then
    # Windows
    echo "🪟 Detected Windows - Opening in default browser..."
    start "$PRESENTATION_PATH"
else
    echo "❓ Unknown OS. Please open index.html manually."
    exit 1
fi

echo "✅ Presentation opened successfully!"
echo ""
echo "💡 Tip: For the best experience, consider using a local server:"
echo "   python3 -m http.server 8000"
echo "   Then visit: http://localhost:8000"
echo ""
echo "🎉 Enjoy exploring CAMEL-AI Toolkits!"

