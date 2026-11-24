{ pkgs, ... }:

{
  # x11
  services.xserver.enable = true;
  services.xserver.xkb.layout = "us";

  # kde plasma
  services.desktopManager.plasma6.enable = true;
  services.displayManager.sddm.enable = true;

  # todo: use home-manager
  # desktop packages

  # todo:
  # vscode
  # new: renogare font (can steal mayb), non-olympus lonn?, rysy, huion graphics tablet driver :disappointed_relieved:
  # patches: nearest-neighbour scaling dolphin, systemd wawa
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
    audacity
    lmms
    musescore
    vlc
    kdePackages.kdenlive

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
