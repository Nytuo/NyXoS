{ pkgs, pkgs-unstable, ... }:

{
  

  home.packages = [

    # Dev stuff
    pkgs.gitAndTools.gh
    pkgs.jetbrains.pycharm-professional
    pkgs.jetbrains.webstorm
    pkgs.jetbrains.clion
    pkgs.dotnet-sdk_8
    pkgs.dotnetPackages.Nuget
    pkgs.gcc
    pkgs.nodejs_21
    pkgs.nodePackages.pnpm
    (pkgs.python3.withPackages (python-pkgs: [
        python-pkgs.pip
        python-pkgs.requests
    ]))
    pkgs.pkgsCross.mingwW64.stdenv.cc 
    pkgs.pkgsCross.mingwW64.windows.pthreads
    pkgs.zig
    
    # Work stuff
    pkgs.obsidian
    pkgs.thunderbird
 
    # Bluetooth
    pkgs.blueberry

        
    pkgs.discord
    pkgs.spotify
    pkgs.vlc
    pkgs.inkscape
    pkgs.gimp


    # Gaming
    pkgs.steam
    pkgs.steam-run
    (pkgs.lutris.override {
      extraPkgs = pkgs: [
        pkgs.wineWowPackages.stable
        pkgs.winetricks
      ];
    })

    # Downloads
    pkgs.qbittorrent

    # Utils
    pkgs.viewnior
    pkgs-unstable.hyprshot
    pkgs.catppuccin-cursors.macchiatoBlue
    pkgs.catppuccin-gtk
    pkgs.papirus-folders

    # AGS
     pkgs.pywal
        pkgs.sassc
  ];
}
