{ pkgs, ... }:

{
  # zsh
  # todo: use home-manager
  # todo: try alternatives (fish/nushell)?
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      nixos-switch = "sudo nixos-rebuild switch";
    };

    # ohmyzsh
    ohMyZsh = {
      enable = true;
      plugins = [
        "git"
        "tmux"
      ];
      # todo: this is like finesies but a custom theme or mayb switching to something like starship (?) could b neat
      theme = "alanpeabody";
    };

    histFile = "$HOME/.zsh_history";
    histSize = 15000;
    setOptions = [
      "HIST_IGNORE_DUPS"
    ];
  };

  # tmux
  # todo: figure out how to make this autostart in a niceys way
  programs.tmux = {
    enable = true;
  };

  # todo: use home-manager
  # todo: add more
  # command line packages
  environment.systemPackages = with pkgs; [
    # utils
    vim
    nano
    wget
    git
    zip
    unzip

    # misc
    libqalculate
    fastfetch
    hyfetch
    ffmpeg
    yt-dlp
    wine
    winetricks

    # programming
    dotnet-sdk_11
    dotnet-sdk_8
    mono
    # thisdoenst workk
    # (julia-bin.withPackages.override {
    #   packageOverrides = {
    #     "Maple" = fetchFromGitHub {
    #       owner = "CelestialCartographers";
    #       repo = "Maple";
    #       rev = "72e9b8de4c0efc71b142b681f414454b560ed094";
    #       sha256 = "09s9bzybs8ldrsnachrii78k23g7i29bagnr6w32zcsfxvbrnj2y";
    #     };
    #   };
    # } [
    #   "YAML"
    #   "ZipFile"
    #   "ArgParse"
    #   "Maple"
    # ])
    julia
  ];
}
