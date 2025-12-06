#!/bin/bash
set -e

echo "=== Installing Google Gemini Environment ==="

# Install system packages
sudo apt-get update
sudo apt-get install -y curl jq

# Install ttyd
echo "Installing ttyd..."
wget -q https://github.com/tsl0922/ttyd/releases/download/1.7.7/ttyd.x86_64 -O /tmp/ttyd
sudo mv /tmp/ttyd /usr/local/bin/ttyd
sudo chmod +x /usr/local/bin/ttyd

# Install cloudflared
echo "Installing cloudflared..."
curl -L --output /tmp/cloudflared.deb https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb
sudo dpkg -i /tmp/cloudflared.deb

# Install Google Gemini CLI
echo "Installing Google Gemini CLI..."
npm install -g @google/gemini-cli

echo "✓ Google Gemini setup complete!"