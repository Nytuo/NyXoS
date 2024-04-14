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


## Reminder :

# Install
perform a minimal install (with graphical installer Calamares, but choose 'No desktop')

# go into a root shell
sudo su

# go inside a shell with properly required programs
nix-shell -p git nixUnstable

# create this folder if necessary
mkdir -p /mnt/etc/

# clone the repo
git clone https://github.com/Nytuo/NyXoS.git /mnt/etc/nixos

# Keep old hardware-configuration.nix for fs entry
Edit the hardware to have a filesystem entry on it corresponding to the output of the new one we will generate after

# remove this file
rm /mnt/etc/nixos/system/hardware-configuration.nix

# generate the config and take some files
nixos-generate-config --root /mnt
rm /mnt/etc/nixos/configuration.nix
mv /mnt/etc/nixos/hardware-configuration.nix /mnt/etc/nixos/system

# make sure you're in this path
cd /mnt/etc/nixos

nixos-install --flake '.#nixos-personal'

or

nixos-rebuild switch --flake .#nixos-personal

reboot

