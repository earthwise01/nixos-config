{ inputs, ... }:

{
  additions = final: prev: import ../pkgs final.pkgs;

  modifications = final: prev: {
    # todo: maybe figure out a cleaner way to organise these

    # systemd-wawa
    # added as a separate package since systemd.package exists and seems to work and i dont wanna rebuild everything that depends on systemd
    systemd-wawa = import ./systemd-wawa final prev;

    # kde packages
    # need to merge attribute sets since doing `kdePackages.dolphin = ...` nukes all other kde packages
    kdePackages = prev.kdePackages // {
      dolphin = import ./dolphin-nearestneighbourpreviews final prev;
    };
  };

  unstable-packages = final: prev: {
    unstablePkgs = import inputs.nixpkgs-unstable {
      system = final.stdenv.hostPlatform.system;
      config.allowUnfree = true;
    };
  };
}