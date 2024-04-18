{ config, pkgs, ... }:

{
    programs.hyprland = {
        enable = true;
    };

    environment.systemPackages = with pkgs; [
      coreutils 
      cliphist cmake
      curl
      fzf
      rsync
      wget
      ripgrep
      gojq 
      npm 
      meson 
      typescript 
      gjs 
      dart-sass 
      axel
      tinyxml2 
      gtkmm3 
      gtksourceviewmm 
      cairomm

      python38Packages.buildPython 
      python38Packages.material-you-color-git 
      python38Packages.Pillow 
      python38Packages.setuptools_scm 
      python38Packages.wheel

      xorg.xrandr
      xdg-desktop-portal 
      xdg-desktop-portal-gtk 
      xdg-desktop-portal-hyprland-git

      pavucontrol 
      wireplumber 
      libdbusmenu-gtk3 
      playerctl 
      sww

      webp-pixbuf-loader 
      gtk-layer-shell 
      gtk3 
      gtksourceview 
      gobject-introspection 
      upower 
      yad 
      ydotool

      polkit-gnome 
      gnome-keyring 
      gnome-control-center 
      blueberry 
      networkmanager 
      brightnessctl 
      wlsunset 
      gnome-bluetooth-3.0

      python38Packages.pywayland 
      python38Packages.psutil 
      hypridle-git 
      hyprlock-git 
      wlogout 
      wl-clipboard 
      hyprpicker-git 
      anyrun-git

      adwaita-gtk3 
      qt5ct 
      qt5-wayland 
      gradience-git 
      fontconfig 
      ttf-readex-pro 
      ttf-jetbrains-mono-nerd 
      ttf-material-symbols-variable-git 
      ttf-space-mono-nerd 
      fish 
      foot 
      starship

      swappy 
      wf-recorder 
      grim 
      tesseract 
      tesseract-data-eng 
      slurp
      hyprpaper
      libnotify
      mako
      qt5.qtwayland
      qt6.qtwayland
      swayidle
      swaylock-effects
      wofi
      waybar
    ];
}
