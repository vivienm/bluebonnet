# 🪻 Bluebonnet

Bluebonnet is my personal bootc image based on **bluefin**.

## Features

- Niri-based Wayland desktop environment and related utilities
- Nautilus Python bindings (`nautilus-python`)
- Nix compatibility
- Tesseract OCR
- Encrypted filesystem support via `gocryptfs`
- Visual Studio Code (on non-DX variants; already included in Bluefin DX)
- [Monaspace](https://github.com/githubnext/monaspace) Nerd Font
- [Sunshine](https://app.lizardbyte.dev/Sunshine)

## Variants

- `bluebonnet` — base image
- `bluebonnet-nvidia-open` — with NVIDIA open drivers
- `bluebonnet-dx` — developer experience (DX) variant
- `bluebonnet-dx-nvidia-open` — DX + NVIDIA open drivers

## Install

```bash
sudo bootc switch ghcr.io/vivienm/<variant>:stable
sudo systemctl reboot
```
