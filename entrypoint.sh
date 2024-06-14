#!/bin/bash
if [ ! -d "/data/fooocus/models" ]; then
    echo "Installing..."
    git clone https://github.com/lllyasviel/Fooocus.git /data/fooocus
    cd /data/fooocus
    #cp settings-no-refiner.json settings.json
    git reset --hard
    python3 -m venv .venv
    source .venv/bin/activate
    pip install packaging==23.1 pygit2==1.12.2
fi
cd /data/fooocus
source .venv/bin/activate
echo "Launching..."
ls
python entry_with_update.py --listen 0.0.0.0 --port 8080 --theme dark