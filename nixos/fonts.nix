{ pkgs, ... }:

{
  # todo: do this better (home-manager?)
  # fonts
  fonts.packages = with pkgs; [
    noto-fonts-cjk-sans
    nerd-fonts.jetbrains-mono
    renogare
  ];
}