{ pkgs, ... }:

{
  users.users.earthwise = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanger"
    ];
    shell = pkgs.zsh;
  };
}
