#!/bin/bash

# This script installs and configures prequisites for Gamemaker for Ubuntu
# Reference: https://help.gamemaker.io/hc/en-us/articles/235186168-Setting-Up-For-Ubuntu

handle_error() {
    echo "Error occurred in script at line: $1"
    exit 1
}

trap 'handle_error $LINENO' ERR

install_packages() {
    echo "Updating package list and installing required packages..."
    sudo apt-get update && sudo apt-get install -y build-essential openssh-server clang libssl-dev libxrandr-dev libxxf86vm-dev libopenal-dev libgl1-mesa-dev libglu1-mesa-dev zlib1g-dev libcurl4-openssl-dev ffmpeg libfuse2 curl nproc
}

create_steam_runtime_directory() {
    echo "Creating directory for Steam runtime..."
    sudo mkdir -p /opt/steam-runtime/
}

download_and_extract_steam_runtime() {
    echo "Downloading and extracting the Steam runtime..."
    curl -L https://repo.steampowered.com/steamrt-images-scout/snapshots/latest-steam-client-general-availability/com.valvesoftware.SteamRuntime.Sdk-amd64,i386-scout-sysroot.tar.gz | sudo tar -xzf - -C /opt/steam-runtime/
}

install_appimagetool() {
    echo "Downloading appimagetool AppImage..."
    wget https://github.com/AppImage/AppImageKit/releases/download/continuous/appimagetool-x86_64.AppImage
    echo "Installing appimagetool AppImage..."
    sudo install -m 0755 appimagetool-x86_64.AppImage /usr/local/bin/appimagetool
}

install_linuxdeploy() {
    echo "Downloading linuxdeploy AppImage..."
    wget https://github.com/linuxdeploy/linuxdeploy/releases/download/continuous/linuxdeploy-x86_64.AppImage
    echo "Installing linuxdeploy AppImage..."
    sudo install -m 0755 linuxdeploy-x86_64.AppImage /usr/local/bin/linuxdeploy
}

install_packages
create_steam_runtime_directory
download_and_extract_steam_runtime
install_appimagetool
install_linuxdeploy

echo "Complete"

