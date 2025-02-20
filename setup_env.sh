#!/bin/bash

# Exit on any error
set -e

echo "Starting environment setup..."

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Function to add line to .bashrc if it doesn't exist
add_to_bashrc() {
    grep -qxF "$1" ~/.bashrc || echo "$1" >> ~/.bashrc
}

# Update package list
echo "Updating package list..."
sudo apt-get update

# Install required packages
echo "Installing required packages..."
sudo apt-get install -y openjdk-11-jdk xmlstarlet repo git-core gnupg flex bison gperf build-essential
sudo apt-get install -y zip curl zlib1g-dev libc6-dev x11proto-core-dev libx11-dev
sudo apt-get install -y libgl1-mesa-dev g++-multilib tofrodos libxml2-utils xsltproc
sudo apt-get install -y uuid-dev ninja-build scons python3-pip
sudo apt-get install -y openjdk-11-jdk xmlstarlet repo pkg-config python3.12-dev
sudo apt-get install -y libncurses5 libxml-simple-perl

# Setup Java environment
echo "Setting up Java environment..."
JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
add_to_bashrc "export JAVA_HOME=$JAVA_HOME"
add_to_bashrc "export PATH=\$JAVA_HOME/bin:\$PATH"

# Install Miniconda if not already installed
if ! command_exists conda; then
    echo "Installing Miniconda..."
    mkdir -p ~/miniconda3
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
    bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
    rm ~/miniconda3/miniconda.sh
    
    # Initialize conda
    eval "$(~/miniconda3/bin/conda shell.bash hook)"
    conda init --all
    
    echo "Miniconda installed successfully"
else
    echo "Conda already installed, skipping installation"
fi

# Create and activate conda environment
echo "Setting up Python environment..."
if ! conda info --envs | grep -q "hlos"; then
    conda create --name hlos python=3.8 -y
fi
conda activate hlos || echo "Please run 'conda activate hlos' manually after the script finishes"

# Configure git
echo "Configuring git..."
git config --global http.followRedirects true
git config --global pack.threads "$(nproc)"

# Print setup completion message
echo "Environment setup completed!"
echo "Please run 'source ~/.bashrc' to apply all changes"
echo "Then run 'conda activate hlos' to activate the Python environment"

# Verify installations
echo -e "\nVerifying installations:"
echo "Java version:"
java -version
echo -e "\nPython version:"
python --version
