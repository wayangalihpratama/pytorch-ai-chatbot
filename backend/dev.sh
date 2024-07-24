#!/usr/bin/env bash
set -eu

apt-get update
apt-get clean
rm -rf /var/lib/apt/lists/*

pip -q install --upgrade pip
pip -q install --cache-dir=.pip -r requirements.txt

python -m nltk.downloader all

tail -f /dev/null
