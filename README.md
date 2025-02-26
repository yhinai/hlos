# HLOS Build System

A comprehensive build system for High-Level Operating System (HLOS).


## Prerequisites

Before running the build system, ensure your environment meets all requirements by following the setup guide.

## Quick Start

1. Clone the repository:
```bash
git clone https://github.com/yhinai/hlos.git
cd hlos

# Set up the environment:
chmod 777 setup_env.sh hlos.sh
./setup_env.sh
source ~/.bashrc
conda activate hlos
```

## Detailed Setup Guide

### 1. Environment Setup

Follow these steps to set up your build environment:

```bash
# Update package list
sudo apt-get update

# Download and install Miniconda
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm ~/miniconda3/miniconda.sh

# Initialize conda
source ~/miniconda3/bin/activate
conda init --all
conda create --name hlos python=3.8 -y
conda activate hlos
```

### 2. Install Required Packages
```bash
# Update package list
sudo apt-get update

# Install essential packages
sudo apt-get install -y openjdk-11-jdk xmlstarlet repo git-core gnupg flex bison gperf build-essential
sudo apt-get install -y zip curl zlib1g-dev libc6-dev x11proto-core-dev libx11-dev
sudo apt-get install -y libgl1-mesa-dev g++-multilib tofrodos libxml2-utils xsltproc
sudo apt-get install -y uuid-dev ninja-build scons python3-pip
sudo apt-get install -y openjdk-11-jdk xmlstarlet repo pkg-config python3.12-dev
sudo apt-get install -y libncurses5 libxml-simple-perl golang-go toybox

# Set up Java environment
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH
echo 'export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64' >> ~/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bashrc
```

## Build Process

The build process consists of three main components:

1. **Kernel Build**: Builds the kernel platform
2. **QSSI Build**: Builds the QSSI components
3. **Vendor Build**: Builds vendor-specific components

### Running the Build

1. Ensure you're in the conda environment:
```bash
conda activate hlos
```

2. Run the build script:
```bash
chmod 777 hlos.sh
./hlos.sh
```

