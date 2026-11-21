{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # utils
    vim
    nano
    wget
    git

    # misc
    ffmpeg
    yt-dlp
    wine
    winetricks

    # c# dev
    dotnet-sdk_11
    dotnet-sdk_8
    mono
  ];
}
