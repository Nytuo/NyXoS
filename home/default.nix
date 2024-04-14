{ config, pkgs, pkgs-unstable, lib, inputs, ... }:

{
  imports = [
    ./user
  ];
  
  home.username = "arnaud";
  home.homeDirectory = "/home/arnaud";
  home.stateVersion = "23.11";
}

