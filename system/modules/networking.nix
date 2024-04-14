{ config, pkgs, ... }:

{
  networking = {
	hostName = "NyXoS";
	networkmanager.enable = true;
	enableIPv6 = false;
	firewall.enable = false;
  };
}
