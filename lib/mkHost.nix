name: { nixpkgs, home-manager, overlays, system, user, homeDir }:

nixpkgs.lib.nixosSystem {
  inherit system;

  modules = [
    {
      nixpkgs.overlays = overlays;
    }

    # i.e. hardware-configuration.nix
    ../hardware/${name}.nix

    # i.e. configuration.nix
    ../machines/${name}.nix

    # i.e. user accounts
    ../users/${user}/user.nix

    # Setup home-manager
    home-manager.nixosModules.home-manager
    {
      home-manager.useGlobalPkgs = true;
      home-manager.useUserPackages = true;
      home-manager.users.${user} = import ../users/${user}/home.nix;
    }
  ];
}

