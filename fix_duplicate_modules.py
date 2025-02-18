#!/usr/bin/python3

import os
import shutil
from pathlib import Path

def find_duplicate_android_bp(root_dir):
    """Find all Android.bp files that might be duplicated"""
    original_files = set()
    duplicate_files = set()
    
    # Walk through all directories
    for dirpath, _, filenames in os.walk(root_dir):
        for filename in filenames:
            if filename == "Android.bp":
                filepath = os.path.join(dirpath, filename)
                if "LINUX/android" in filepath:
                    duplicate_files.add(filepath)
                else:
                    original_files.add(filepath)
    
    return original_files, duplicate_files

def remove_linux_android_tree():
    """Completely remove the LINUX/android tree and clean any remnants"""
    linux_paths = [
        "LINUX/android",
        "LINUX/android_backup"
    ]
    
    for path in linux_paths:
        if os.path.exists(path):
            print(f"Removing {path}...")
            try:
                shutil.rmtree(path)
                print(f"Successfully removed {path}")
            except Exception as e:
                print(f"Error removing {path}: {e}")

def clean_build_artifacts():
    """Clean build artifacts that might contain stale references"""
    build_paths = [
        "out/soong",
        "out/build-*",
        ".module_paths"
    ]
    
    for path in build_paths:
        if os.path.exists(path):
            print(f"Cleaning {path}...")
            try:
                shutil.rmtree(path)
                print(f"Successfully cleaned {path}")
            except Exception as e:
                print(f"Error cleaning {path}: {e}")

def main():
    # Verify we're in the Android root directory
    if not os.path.exists("vendor/qcom/proprietary"):
        print("Error: Please run this script from the Android source root directory")
        return 1
    
    # 1. Remove the duplicate tree
    remove_linux_android_tree()
    
    # 2. Clean build artifacts
    clean_build_artifacts()
    
    # 3. Print instructions
    print("\nCleanup complete. Please re-run the build script")
    
    return 0

if __name__ == "__main__":
    exit(main())
