# syntax=docker/dockerfile:1.4


# Base Image
# =============================================================================

# Use the official slim Python image based on Debian Bullseye
FROM python:3.11-slim-bullseye


# System Dependencies
# =============================================================================
# Install necessary system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    wget \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*



# Remove unnecessary CUDA stubs
RUN rm -rf /usr/local/cuda/lib64/stubs


# Python Dependencies
# =============================================================================
# Copy requirements file and install Python dependencies
COPY ./etc/requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt \
    --extra-index-url https://download.pytorch.org/whl/cu118 \
    && rm /tmp/requirements.txt



# Copy requirements file
# COPY requirements.txt /requirements.txt
# COPY requirements.txt /

# Install Python dependencies
# RUN pip install --no-cache-dir -r /requirements.txt \
#   --extra-index-url https://download.pytorch.org/whl/cu118
# RUN pip install -r requirements.txt \
#   --extra-index-url https://download.pytorch.org/whl/cu118




# Non-root User Setup
# =============================================================================
# Create a non-root user 'huggingface'
RUN useradd -m -s /bin/bash huggingface
# RUN useradd -m huggingface

# Switch to non-root user
USER huggingface


# Working Directory
# =============================================================================
# Set the working directory
WORKDIR /home/huggingface

# Environment Variables
# =============================================================================
# Set environment variables
ENV USE_TORCH=1 \
    PYTHONUNBUFFERED=1

# Create necessary directories
RUN mkdir -p \
    /home/huggingface/.cache/huggingface \
    /home/huggingface/input \
    /home/huggingface/output


# RUN mkdir -p /home/huggingface/.cache/huggingface \
#   && mkdir -p /home/huggingface/input \
#   && mkdir -p /home/huggingface/output


# Copy scripts and files
# =============================================================================
# Copy the entrypoint script and token
COPY --chown=huggingface:huggingface docker-entrypoint.py /usr/local/bin/
COPY --chown=huggingface:huggingface token.txt /home/huggingface/token.txt

# Ensure the entrypoint script is executable
RUN chmod +x /usr/local/bin/docker-entrypoint.py


# COPY docker-entrypoint.py /usr/local/bin
# COPY token.txt /home/huggingface




# Entrypoint
# =============================================================================
# Set the entrypoint
ENTRYPOINT ["docker-entrypoint.py"]


