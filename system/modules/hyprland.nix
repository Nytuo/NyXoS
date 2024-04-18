{ config, pkgs, ... }:

{
    programs.hyprland = {
        enable = true;
    };

    environment.systemPackages = with pkgs; [
      # hyprland
           brightnessctl
           cliphist
           fuzzel
           grim
           hyprpicker
           tesseract
           imagemagick
           pavucontrol
           playerctl
           swappy
           swaylock-effects
           swayidle
           slurp
           swww
           wayshot
           wlsunset
           wl-clipboard
           wf-recorder
  # tools

      libnotify
      starship
      showmethekey
      ydotool

      # theming tools
      gradience
      gnome.gnome-tweaks
    ];
}
