{ pkgs, ... }:

{
  # x11
  services.xserver.enable = true;
  services.xserver.xkb.layout = "us";

  # kde plasma
  services.desktopManager.plasma6.enable = true;
  services.displayManager.plasma-login-manager.enable = true;

  # todo: use home-manager
  # desktop packages

  # todo:
  # vscode
  # new: non-olympus lonn?, rysy, huion graphics tablet driver :disappointed_relieved:
  environment.systemPackages = with pkgs; [
    # system
    keepassxc
    kdePackages.filelight

    # communication
    vesktop

    # media
    gimp
    krita
    aseprite
    inkscape
    blender
    audacity
    lmms
    musescore
    vlc
    audacious
    kdePackages.kdenlive

    # office
    libreoffice

    # minecraft
    prismlauncher

    # celeste modding
    olympus
    avalonia-ilspy
  ];

  # browser
  programs.firefox = {
    enable = true;
    policies = {
      DisableTelemetry = true;
      AIControls.Default.Value = "blocked";
    };
  };
}
