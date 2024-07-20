#!/bin/bash

# Activate the virtual environment if needed
# source venv/bin/activate

# Run the Stable Diffusion model
python scripts/txt2img.py --prompt "A scenic landscape" --plms
