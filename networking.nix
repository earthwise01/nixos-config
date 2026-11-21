{ ... }:

{
  networking.hostName = "wildberry";
  networking.networkmanager.enable = true;

  # open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # or disable the firewall altogether.
  # networking.firewall.enable = false;

  # configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
}
