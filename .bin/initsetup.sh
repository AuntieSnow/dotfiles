#!/bin/bash
echo "Installing Trizen"
./installtrizen.sh > /dev/null 2>&1
echo "Trizen Installed"
echo "Setting up folders"
./setupfolders.sh > /dev/null 2>&1
echo "Folders setup"
