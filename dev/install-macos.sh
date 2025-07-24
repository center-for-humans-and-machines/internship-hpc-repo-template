#!/bin/bash

set -e  # Exit on any error

echo "🚀 Installing internship-repo-template on macOS..."

# Step 1: Install pipx
echo "📦 Installing pipx..."
if command -v brew &> /dev/null; then
    brew install pipx && pipx ensurepath
else
    echo "❌ Error: Homebrew is not installed. Please install Homebrew first:"
    echo -e "   \033[32m/bin/bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\"\033[0m"
    exit 1
fi

# Step 2: Install Poetry
echo "📦 Installing Poetry..."
pipx install poetry

# Step 3: Install project
echo "📦 Installing project dependencies..."
poetry install

# Step 4: Find virtual environment
echo "🔍 Finding virtual environment..."
ACTIVATE_COMMAND=$(poetry env activate)

# Step 5: Display activation instructions
echo "✅ Installation complete!"
echo ""
echo "To activate the virtual environment, run:"
echo -e "   \033[32m$ACTIVATE_COMMAND\033[0m"
