#!/usr/bin/env bash
# exit on error
set -o errexit

echo "🚀 Installing build tools..."
pip install --upgrade pip setuptools wheel Cython

echo "📦 Installing requirements..."
pip install -r requirements.txt

echo "🎤 Pre-downloading Whisper model (tiny)..."
python -c "import whisper; whisper.load_model('tiny')"

echo "✅ Build complete!"
