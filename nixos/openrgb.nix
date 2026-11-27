{ pkgs, ... }:

let
  openrgb-pkg = pkgs.openrgb-with-all-plugins;
in {
  # openrgb
  environment.systemPackages = [
    openrgb-pkg
  ];

  services.hardware.openrgb = {
    enable = true;
    package = openrgb-pkg;
  };
}