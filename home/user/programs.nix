{ inputs, pkgs, ... }:
{
  
  programs.ags = {
    enable = true;

    # null or path, leave as null if you don't want hm to manage the config
    configDir = ../ags;

    # additional packages to add to gjs's runtime
    extraPackages = with pkgs; [
      gtksourceview
      webkitgtk
      accountsservice
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
