FROM python:3.8-slim

# Copy uv binary from official image
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# Install system dependencies required for building h5py and other packages
RUN apt-get update && apt-get install -y \
    pkg-config \
    libhdf5-dev \
    gcc \
    g++ \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Create non-root user and workspace directory
RUN useradd -m jupyter && \
    mkdir -p /workspace && \
    chown jupyter:jupyter /workspace

# Set up environment
WORKDIR /workspace
COPY requirements.txt /tmp/

# Install Python dependencies using uv
RUN uv pip install --system \
    jupyterlab \
    -r /tmp/requirements.txt && \
    rm /tmp/requirements.txt

USER jupyter

# Expose JupyterLab port
EXPOSE 8888

# Start JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]