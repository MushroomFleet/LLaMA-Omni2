# LLaMA-Omni 2 - Fork Modifications

This is a forked version of the [LLaMA-Omni 2](https://github.com/ictnlp/LLaMA-Omni2) project with some Quality of Life (QoL) improvements to the installation process. The original README.md has been preserved, and this document describes only the changes made in this fork.

## Changes Made

We've made the following changes to improve user-friendliness and ease of access:

1. **Replaced conda with Python's standard venv**
   - Eliminated the dependency on Anaconda/Miniconda
   - Uses Python's built-in venv module for virtual environment management

2. **Added new files for streamlined installation:**
   - `requirements.txt` - Contains all dependencies extracted from pyproject.toml
   - `install.bat` - Windows batch script for automated environment setup
   - `start-venv.bat` - Batch script to activate the environment and show usage instructions

## Installation Instructions

Instead of using the conda-based installation described in the original README.md, you can now use the following simplified process:

### 1. Clone the repository

```shell
git clone https://github.com/ictnlp/LLaMA-Omni2
cd LLaMA-Omni2
```

### 2. Run the installation script

```shell
install.bat
```

This script automatically:
- Creates a Python virtual environment named `venv`
- Activates the virtual environment
- Installs all required packages from requirements.txt
- Installs the LLaMA-Omni2 package in development mode

### 3. Activate the environment

When you want to use LLaMA-Omni2, run:

```shell
start-venv.bat
```

This activates the virtual environment and displays instructions for running the application.

## Usage Instructions

After installation, the usage remains the same as described in the original README.md. The key components still need to be launched in this order:

1. Controller
2. Gradio web server
3. Model worker

The `start-venv.bat` script provides these instructions when you run it.

## Model Downloads

For model downloads and other aspects of the project, please refer to the original README.md file, as these procedures remain unchanged.

## Note on Compatibility

These installation changes maintain full compatibility with the original codebase. We've only modified how the Python environment is set up, not the actual functionality of the project.
