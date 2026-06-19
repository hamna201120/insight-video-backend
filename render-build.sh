#!/usr/bin/env bash
# exit on error
set -o errexit

echo "🚀 Installing Python packages..."

# Upgrade pip and install build tools
pip install --upgrade pip setuptools wheel

# Install numpy first (critical for whisper)
pip install numpy==1.24.3 --no-cache-dir

# Install CPU-only PyTorch
pip install torch==2.0.1 --index-url https://download.pytorch.org/whl/cpu --no-cache-dir

# Install the rest of requirements
pip install -r requirements.txt --no-cache-dir

echo "🎤 Pre-downloading Whisper model (tiny)..."
python -c "import whisper; whisper.load_model('tiny')"

echo "✅ Build complete!"
