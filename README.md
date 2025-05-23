# HLOS Build System

This repository contains a comprehensive build system for High-Level Operating System (HLOS) development. It automates the complete build pipeline for mobile/embedded platforms with three main components:

1. **Kernel Build** - Builds the kernel platform using Bazel
2. **QSSI Build** - Builds the Qualcomm System Software Implementation components
3. **Vendor Build** - Builds vendor-specific components and generates the final system image

The system handles environment setup, dependency installation, code synchronization, and compilation across all components. It's designed for Qualcomm-based platforms and includes scripts to manage the entire workflow from environment configuration to final OS image.

## Prerequisites

Before running the build system, ensure your environment meets all requirements by following the setup guide.

## Quick Start

1. Set up the environment:
```bash
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
sudo apt install -y openjdk-11-jdk xmlstarlet repo git-core gnupg flex bison gperf build-essential
sudo apt install -y zip curl zlib1g-dev libc6-dev x11proto-core-dev libx11-dev
sudo apt install -y libgl1-mesa-dev g++-multilib tofrodos libxml2-utils xsltproc
sudo apt install -y uuid-dev ninja-build scons python3-pip
sudo apt install -y openjdk-11-jdk xmlstarlet repo pkg-config python3.12-dev
sudo apt install -y libncurses5 libxml-simple-perl golang-go toybox xxd cgpt
sudo apt install -y python2.7

# Set up Java environment
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH
echo 'export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64' >> ~/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bashrc
```

### 3. [optional] LibXML2 Setup
```bash
cd ~
sudo apt-get -y update
sudo apt-get install -y python3.8 python3.8-dev

export PYTHON_CFLAGS=$(python3.8-config --cflags)
export PYTHON_LIBS=$(python3.8-config --libs)

wget https://download.gnome.org/sources/libxml2/2.12/libxml2-2.12.9.tar.xz
tar -xvf libxml2-2.12.9.tar.xz
cd libxml2-2.12.9/
./configure --prefix=$(pwd)
make
make install

# Set up library paths
export LD_LIBRARY_PATH=~/libxml2-2.12.9/lib:$LD_LIBRARY_PATH
export PKG_CONFIG_PATH=~/libxml2-2.12.9/lib/pkgconfig:$PKG_CONFIG_PATH
echo 'export LD_LIBRARY_PATH=~/libxml2-2.12.9/lib:$LD_LIBRARY_PATH' >> ~/.bashrc
echo 'export PKG_CONFIG_PATH=~/libxml2-2.12.9/lib/pkgconfig:$PKG_CONFIG_PATH' >> ~/.bashrc
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

