{ config, lib, pkgs, ... }: {
  
  home.stateVersion = "22.11";

  home.packages = with pkgs; [
    curl
    wget
    git
    jq
    ripgrep
    fd
    tmux
    fzf
    htop
    clang
    clang-tools
    gnumake
    nodejs
    unzip
  ];

  home.sessionVariables = {
    LANG = "en_US.UTF-8";
    LC_CTYPE = "en_US.UTF-8";
    LC_ALL = "en_US.UTF-8";
    EDITOR = "nvim";
    PAGER = "less -FirSwX";
  };

  # Neovim Configuration
  xdg.configFile.nvim = {
    source = ./dotfiles/.config/nvim;
    recursive = true;
  };

  # Tmux Configuration
  home.file.".tmux.conf".source = ./dotfiles/.tmux.conf;

  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
    userName = "Alex Hays";
    userEmail = "ahaysx@gmail.com";
    aliases = {
      "co" = "checkout";
      "ci" = "commit";
      "br" = "branch";
      "st" = "status";
      "unstage" = "reset HEAD--";
      "last" = "log -1 HEAD";
    };
    # Broken, needs fix: https://discourse.nixos.org/t/applications-not-finding-org-freedesktop-secrets/17667
    # extraConfig = {
    #   credential.helper = "${
    #       pkgs.git.override { withLibsecret = true; }
    #     }/bin/git-credential-libsecret";
    # };
  };

  programs.zsh = {
    enable = true;
    autocd = true;
    enableAutosuggestions = true;
    enableSyntaxHighlighting = true;
    enableCompletion = true;

    history = {
     save = 100000;
    };

    shellAliases = {
      ll = "ls -la";
      vim = "nvim";
    };

    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
      {
        name = "powerlevel10k-config";
        src = ./dotfiles/p10k;
        file = "p10k.zsh";
      }
    ];

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      custom = "$HOME/.config/oh-my-zsh";
    };
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
}
