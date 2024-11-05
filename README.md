# Auto VPS Swap Setup Script For Ubuntu

![Version](https://img.shields.io/badge/Version-1.1-blue)
![OS](https://img.shields.io/badge/OS-Ubuntu-lightgray)
![License](https://img.shields.io/badge/License-MIT-brightgreen)
![Status](https://img.shields.io/badge/Status-stable-brightgreen)
![Developer](https://img.shields.io/badge/Developer-Akhilesh%20Kovangal-lightblue)
![Owner](https://img.shields.io/badge/Owner-Axe%20Media-lightblue)

This repository provides a simple, automated Bash script for creating and configuring swap memory on a VPS running Ubuntu. With this script, you can set up a swap file in one command, specifying your desired swap size.

## Features

- Creates a swap file with a specified size.
- Configures secure permissions on the swap file.
- Enables swap and makes it persistent across reboots.
- Optimizes system settings for efficient memory management.

## Usage

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/Axemedia-in/vps-swap-setup.git
   cd vps-swap-setup
   ```
   
2. **Run the Script**
   Run the script with a custom swap size. For example, to create a 2GB swap file:
   ```bash
      bash create-swap.sh 2G
   ```
      
   If no size is specified, the default size is *4G*:
   ```bash
    bash create-swap.sh
   ```

3. **One-Line Command:**
   To run the script directly from GitHub, use this one-liner:
   ```bash
   curl -sSL https://raw.githubusercontent.com/Axemedia-in/vps-swap-setup/main/create-swap.sh | bash -s <SWAP_SIZE>
   ```
   For example, to create a 1GB swap:
   ```bash
   curl -sSL https://raw.githubusercontent.com/Axemedia-in/vps-swap-setup/main/create-swap.sh | bash -s 1G
   ```
   
## Configuration

This script includes system tweaks for optimized memory management:

*vm.swappiness:* Set to *10* to reduce swap usage. <br>
*vm.vfs_cache_pressure:* Set to *50* to prioritize caching of directory entries and inodes.

<be>

This code is made and licensed to Axe Media and Akhilesh Kovangal (CEO and Founder).
Feel free to copy and paste this version into your `README.md`. Let me know if there’s anything else you would like to add or modify!
