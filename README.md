# 🪻 Bluebonnet

Bluebonnet is my personal bootc image based on **bluefin**.

## Features

- Niri-based Wayland desktop environment and related utilities
- Nautilus Python bindings (`nautilus-python`)
- Nix compatibility
- Tesseract OCR
- Encrypted filesystem support via `gocryptfs`
- Visual Studio Code (on non-DX variants; already included in Bluefin DX)

## Install

```bash
sudo bootc switch ghcr.io/vivienm/bluebonnet:stable
# or ghcr.io/vivienm/bluebonnet-nvidia:stable
sudo systemctl reboot
```
