# Bluebonnet

Bluebonnet is my personal bootc image based on **bluefin-dx**.

## Includes

- Niri-based Wayland desktop environment and related utilities
- Nautilus Python bindings (`nautilus-python`)
- Encrypted filesystem support via `gocryptfs`

## Install

```bash
sudo bootc switch ghcr.io/vivienm/bluebonnet:stable
# or ghcr.io/vivienm/bluebonnet-nvidia:stable
sudo systemctl reboot
```
