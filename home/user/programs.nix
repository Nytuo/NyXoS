{ inputs, ... }:
{
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
