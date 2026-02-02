#!/bin/bash
set -e

# Install Hugo Extended
HUGO_VERSION="0.147.8"
wget -q https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz
tar -xzf hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz
chmod +x hugo
export PATH=$PWD:$PATH

# Verify hugo extended
./hugo version

# Install npm dependencies
npm install
