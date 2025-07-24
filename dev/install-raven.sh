#!/bin/bash

set -e  # Exit on any error

echo "🚀 Installing internship-repo-template on Raven cluster..."

# Step 1: Load python version
echo "🐍 Loading Python module..."
module load python-waterboa/2025.06

# Step 2: Install project
echo "📦 Installing project dependencies..."
poetry install

# Step 3: Find virtual environment
echo "🔍 Finding virtual environment..."
ACTIVATE_COMMAND=$(poetry env activate)

# Step 4: Display activation instructions
echo "✅ Installation complete!"
echo ""
echo "To activate the virtual environment, run:"
echo -e "\033[32m   $ACTIVATE_COMMAND\033[0m"
echo ""
echo "Note: Remember to load the Python module in future sessions:"
echo -e "\033[32m   module load python-waterboa/2025.06\033[0m"