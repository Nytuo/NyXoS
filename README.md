# NixOS + Hyprland

## 🔧 Components

| Component        | Version/Name                   |
| ---------------- | ------------------------------ |
| Distro           | NixOS                          |
| Shell            | Zsh                            |
| Display Server   | Wayland                        |
| WM (Compositor)  | Hyprland                       |
| Bar              | Waybar                         |
| Notification     | Mako                           |
| Launcher         | Wofi                           |
| Editor           | Neovim                         |
| Terminal         | Kitty                          |
| Fetch Utility    | Neofetch                       |
| Theme            | Catppuccin Macchiato           |
| Font             | JetBrains Mono & Font Awesome  |
| File Browser     | Thunar & viewnior for images   |
| Internet Browser | Firefox                        |
| Screenshot       | Hyprshot                       |
| Clipboard        | wl-clipboard                   |
| Idle             | Swayidle                       |
| Lock             | Swaylock                       |
| Logout menu      | Wlogout                        |
| Wallpaper        | Hyprpaper                      |
| Display Manager  | SDDM                           |
| Containerization | Docker                         |
| Virtualisation   | qemu + virt-manager + libvirtd |

## ⌨ Keybindings

| Key Combination           | Action                                                                |
| ------------------------- | --------------------------------------------------------------------- |
| SUPER + H, J, K, L        | Change window focus                                                   |
| SUPER + CTRL + H, J, K, L | Resize window                                                         |
| SUPER + SHIFT + H,J,K,L   | Move windows                                                          |
| SUPER + 1..0              | Change workspace                                                      |
| SUPER + SHIFT + 1..0      | Move window to workspace                                              |
| SUPER + S                 | Toggle split                                                          |
| SUPER + Q                 | Kill active window                                                    |
| SUPER + SHIFT + Q         | Launch `swaylock`                                                     |
| SUPER + M                 | Exit from `hyprland`                                                  |
| SUPER + Return            | Launch `kitty`                                                        |
| SUPER + D                 | Launch `wofi`                                                         |
| SUPER + E                 | Launch `thunar`                                                       |
| SUPER + M                 | Launch `wlogout`                                                      |
| SUPER + B                 | Launch `firefox`                                                      |
| SUPER + C                 | Launch `telegram-desktop`                                             |
| Print                     | Take screenshot (currently configured to area capture into clipboard) |

## NixOS specific zsh aliases

- **fullClean** - Fully clean old generations data
- **rebuild** - alias to `nixos-rebuild switch`
- **fullRebuild** - same as previous but also includes `home-manager switch`
- **homeRebuild** - only rebuild home-manager
