# Host and Home Manager Flake
* Manage multiple hosts (NixOS VM, Macbook)
* Manage dotfiles, configurable per host

# Structure
* hardware/ namespaced hardware-configuration.nix files
* machines/ namespaced configuration.nix files
* users/ 
    * namespaced user accounts and home-manager configs
    * shared dotfiles
    * shared common home config
* lib/ library funcs

# Hosts
* vm-aarch64
    * NixOS VM on personal Macbook M1

# How do I ...

**Rebuild a host?**

Inside this flake dir, run switch and specify the host (defined in flake.nix outputs):
```sh
sudo nixos-rebuild switch --flake ".#${host}"
```

**Setup Mac Home?**

Home Manager is [installed standalone](https://nix-community.github.io/home-manager/index.html#sec-install-standalone) on personal Macbook M1. A separate `home.nix` file exists to configure just the user environment there. Run switch and point it to this file:

```sh
home-manager switch -f users/alexh-darwin/home.nix -b backup
```

Once darwin-nix is setup, this will change.

# Resources
* Inspired by [mitchellh/nixos-config](https://github.com/mitchellh/nixos-config)
* Excellent overview in [NixOS Setup Guide - Configuration / Home-Manager / Flakes](https://www.youtube.com/watch?v=AGVXJ-TIv3Y)
    * Requires basic familarity with Nix language but otherwise very approachable
* home-manager [configuration options](https://nix-community.github.io/home-manager/options.html)
* home-manager [NixOS module options](https://nix-community.github.io/home-manager/nixos-options.html)

# TODO
* Configure ts home
* Setup darwin-nix
