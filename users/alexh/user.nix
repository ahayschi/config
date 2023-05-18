{ pkgs, ... }:

{
  # Enable automatic login
  services.getty.autologinUser = "alexh";

  users.users.alexh = {
    isNormalUser = true;
    home = "/home/alexh";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
  };
}

