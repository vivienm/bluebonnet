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

# VSCode is already present on Bluefin DX.
if ! rpm -q code &>/dev/null; then
    echo "::group:: Install Visual Studio Code"
    tee /etc/yum.repos.d/vscode.repo <<'EOF'
[code]
name=Visual Studio Code
baseurl=https://packages.microsoft.com/yumrepos/vscode
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EOF
    sed -i "s/enabled=.*/enabled=0/g" /etc/yum.repos.d/vscode.repo
    dnf -y install --enablerepo=code code
    echo "::endgroup::"
fi

echo "::group:: Install Monaspace Nerd Font"
MONASPACE_VERSION="$(curl -fsSI -o /dev/null -w '%{redirect_url}' https://github.com/githubnext/monaspace/releases/latest | grep -oP '[^/]+$')"
MONASPACE_URL="https://github.com/githubnext/monaspace/releases/download/${MONASPACE_VERSION}/monaspace-nerdfonts-${MONASPACE_VERSION}.zip"
MONASPACE_TMP=$(mktemp -d)
curl -fsSL -o "${MONASPACE_TMP}/monaspace-nerdfonts.zip" "${MONASPACE_URL}"
mkdir -p /usr/share/fonts/monaspace-nerd
unzip -j "${MONASPACE_TMP}/monaspace-nerdfonts.zip" "*.otf" -d /usr/share/fonts/monaspace-nerd/
rm -rf "${MONASPACE_TMP}"
fc-cache -f /usr/share/fonts/monaspace-nerd
echo "::endgroup::"
