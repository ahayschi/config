{
  description = "Alex's Host and Home Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-22.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-22.11";

      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }:
    let
      mkHost = import ./lib/mkHost.nix;
    in
    {
      # NixOS VM on personal Macbook M1
      nixosConfigurations.vm-aarch64 = mkHost "vm-aarch64" {
        inherit nixpkgs home-manager;
        system = "aarch64-linux";
        user = "alexh";
        homeDir = "/home/alexh";
      };
    };
}
