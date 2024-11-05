# VPS Swap Setup

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
   
2. Run the Script
Run the script with a custom swap size. For example, to create a 2GB swap file:
   ```bash
   bash create-swap.sh 2G
   
If no size is specified, the default size is *4G*:
   ```bash
   bash create-swap.sh
