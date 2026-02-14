#!/bin/bash

set -ouex pipefail

echo "::group:: Install Python bindings for Nautilus"
dnf -y install nautilus-python
echo "::endgroup::"

echo "::group:: Create Nix directory"
mkdir -p /nix
echo "::endgroup::"

echo "::group:: Install Niri environment"
dnf -y install \
    niri \
    alacritty \
    blueman \
    brightnessctl \
    fuzzel \
    gammastep-indicator \
    gammastep \
    kanshi \
    mako \
    network-manager-applet \
    swaybg \
    swayidle \
    swaylock \
    waybar \
    wayvnc \
    wev \
    wtype \
    xwayland-satellite
echo "::endgroup::"

echo "::group:: Install Tesseract OCR"
dnf -y install \
    tesseract \
    tesseract-langpack-fra \
    tesseract-langpack-eng
echo "::endgroup::"

echo "::group:: Install gocryptfs"
dnf -y install gocryptfs
echo "::endgroup::"
