{ ... }:

{
  users.users.earthwise = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanger"
    ];
  };
}
