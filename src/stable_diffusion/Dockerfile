# syntax=docker/dockerfile:1.4


# Base Image
# =============================================================================

# Use the official PyTorch image from NVIDIA as a base image
FROM pytorch/pytorch:latest
# FROM pytorch/pytorch:2.3.0-cuda12.1-cudnn8-runtime


# System Dependencies
# =============================================================================

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    wget \
    ffmpeg \
    libsm6 \
    libxext6 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*


# Python Dependencies
# =============================================================================

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt


# Install
# =============================================================================

# Create a working directory
WORKDIR /workspace

# Clone the Stable Diffusion repository
RUN git clone https://github.com/CompVis/stable-diffusion.git

# Change to the stable-diffusion directory
WORKDIR /workspace/stable-diffusion

# Add a script to run Stable Diffusion
COPY run_stable_diffusion.sh /workspace/stable-diffusion/


# Entrypoint
# =============================================================================

# Set the entrypoint
ENTRYPOINT ["bash", "run_stable_diffusion.sh"]