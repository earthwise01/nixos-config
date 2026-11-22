{
  description = "flake for limia's nixos configuration";

  inputs = {
    # use `nix flake update` to update the flake to the latest revision of the chosen release channel
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";

    nix-jetbrains-plugins.url = "github:nix-community/nix-jetbrains-plugins";
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations = {
      # desktop
      wildberry = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          ./configuration.nix
        ];
      };
    };
  };
}
