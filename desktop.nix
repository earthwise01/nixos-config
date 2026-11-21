{ pkgs, ... }:

{
  # x11
  services.xserver.enable = true;
  services.xserver.xkb.layout = "us";

  # kde plasma
  services.desktopManager.plasma6.enable = true;
  services.displayManager.sddm.enable = true;

  # todo: do this better (home-manager?)
  # desktop packages

  environment.systemPackages = with pkgs; [
    # system
    keepassxc
    kdePackages.filelight

    # media
    gimp
    krita
    aseprite
    audacity
    kdePackages.kdenlive
    vlc
    musescore
    lmms

    # minecraft
    prismlauncher

    # celeste modding
    olympus
    avalonia-ilspy
  ];

  # steam
  programs.steam.enable = true;

  # browser
  programs.firefox = {
    enable = true;

    policies = {
      DisableTelemetry = true;
      AIControls.Default.Value = "blocked";
    };
  };
}
