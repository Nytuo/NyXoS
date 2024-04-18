
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    home-manager
    bat
    btop
    htop
    curl
    eza
    fzf
    git
    flatpak
    gparted
    gnumake
    lm_sensors
    libsForQt5.qt5.qtquickcontrols2
    libsForQt5.qt5.qtgraphicaleffects
    libsForQt5.qt5.qtsvg
    neofetch
    neovim
    ripgrep
    tldr
    unzip
    openssl
    openssl.dev
    pkg-config
    wget
    gnome.nautilus
    xdg-desktop-portal-gtk
    xdg-desktop-portal-wlr
    zip
    zoxide
  ];
}

