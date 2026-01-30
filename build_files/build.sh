#!/bin/bash

set -ouex pipefail

echo "::group:: Install Niri environment"
dnf -y install \
    niri \
    alacritty \
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
    xwayland-satellite
echo "::endgroup::"

echo "::group:: Create Nix directory"
mkdir -p /nix
echo "::endgroup::"
