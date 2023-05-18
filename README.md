# Host and Home Manager Flake
* Manage multiple hosts (NixOS VM, Macbook)
* Manage dotfiles, configurable per host

# Structure
* hardware/ namespaced hardware-configuration.nix files
* machines/ namespaced configuration.nix files
* users/ 
    * namespaced user accounts and home-manager configs
    * shared dotfiles
* lib/ library funcs

# How do I ...

## Rebuild a host?

Inside this flake dir, run switch and specify the host (defined in flake.nix outputs)
```sh
nixos-rebuild switch --flake ".#${host}"
```

# Resources
* Inspired by [mitchellh/nixos-config](https://github.com/mitchellh/nixos-config)
* Excellent overview in [NixOS Setup Guide - Configuration / Home-Manager / Flakes](https://www.youtube.com/watch?v=AGVXJ-TIv3Y). Requires basic familarity with Nix language but otherwise very approachable.
* home-manager [configuration options](https://nix-community.github.io/home-manager/options.html)
* home-manager [NixOS module options](https://nix-community.github.io/home-manager/nixos-options.html)

# TODO
* Configure ts home
* Configure mac home

Optional
* Configure mac via darwin-nix