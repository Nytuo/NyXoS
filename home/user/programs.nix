{ inputs, pkgs, ... }:
{

  imports = [
    inputs.ags.homeManagerModules.default
  ];


  programs.ags = {
    enable = true;
    configDir = null; # if ags dir is managed by home-manager, it'll end up being read-only. not too cool.
    # configDir = ./.config/ags;

    extraPackages = with pkgs; [
      gtksourceview
      gtksourceview4
      python311Packages.material-color-utilities
      python311Packages.pywayland
      pywal
      sassc
      webkitgtk
      webp-pixbuf-loader
      ydotool
    ];
  };
  programs.firefox = {
    enable = true;

    profiles.gpskwlkr = {
        extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
            bitwarden
            cookie-autodelete
            ublock-origin
        ];
    };
  };

  programs.home-manager.enable = true;
}
