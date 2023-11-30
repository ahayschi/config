{ config, lib, ... }: {
  # Import the common configuration
  imports = [ ../common-home.nix ];

  home.username = "alexh";
  home.homeDirectory = "/home/alexh";

  lib.mkAfter [ "rust-bin.stable.latest.default" ] config.home.packages;
}
