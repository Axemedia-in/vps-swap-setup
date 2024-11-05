#!/bin/bash

# Default swap size if not provided as an argument
SWAP_SIZE=${1:-4G}
SWAP_FILE="/swapfile"

echo "Creating a swap file of size $SWAP_SIZE..."

# Create the swap file with the specified size
fallocate -l $SWAP_SIZE $SWAP_FILE

# Secure the swap file
chmod 600 $SWAP_FILE

# Set up the swap area
mkswap $SWAP_FILE

# Enable the swap
swapon $SWAP_FILE

# Add to fstab to make it persistent
echo "$SWAP_FILE none swap sw 0 0" | tee -a /etc/fstab

# Adjust swappiness and cache pressure
sysctl vm.swappiness=10
sysctl vm.vfs_cache_pressure=50

# Make adjustments persistent
echo "vm.swappiness=10" | tee -a /etc/sysctl.conf
echo "vm.vfs_cache_pressure=50" | tee -a /etc/sysctl.conf

echo "Swap space of $SWAP_SIZE created and enabled successfully!"
