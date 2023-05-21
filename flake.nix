{
  description = "Alex's Host and Home Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-22.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-22.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    rust-overlay.url = "github:oxalica/rust-overlay";
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
    let
      mkHost = import ./lib/mkHost.nix;
      overlays = [
        inputs.rust-overlay.overlays.default
      ];
    in
    {
      nixosConfigurations.vm-aarch64 = mkHost "vm-aarch64" {
        inherit nixpkgs home-manager overlays;
        system = "aarch64-linux";
        user = "alexh";
        homeDir = "/home/alexh";
      };
    };
}
