{ config, lib, ... }: {
  # Import the common configuration
  imports = [ ../common-home.nix ];
  
  home.username = "alexh";
  home.homeDirectory = "/Users/alexh";
}

