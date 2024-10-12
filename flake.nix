# flake.nix
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    flatpaks.url = "github:gmodena/nix-flatpak";
  };
  outputs = inputs@{ self, nixpkgs, flatpaks, ... }:
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          flatpaks.nixosModules.nix-flatpak
          ./configuration.nix
        ];
      };

    };
}
