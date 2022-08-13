{ pkgs, config, lib, ... }:
{
  imports = [
    ../home.nix
    ./hardware-configuration.nix
  ];

  ## Modules
  modules = {
    desktop = {
      awesomewm.enable = false;
      sway.enable = true;
      apps = {
        rofi.enable = true;
        # godot.enable = true;
      };
      browsers = {
        default = "firefox";
        brave.enable = false;
        firefox.enable = true;
        qutebrowser.enable = false;
      };
      gaming = {
        steam.enable = false;
        # emulators.enable = true;
        # emulators.psx.enable = true;
      };
      media = {
        daw.enable = false;
        documents.enable = false;
        graphics.enable = false;
        mpv.enable = false;
        recording.enable = false;
        spotify.enable = false;
      };
      term = {
        default = "xst";
        st.enable = true;
      };
      vm = {
        qemu.enable = false;
      };
    };
    dev = {
      node.enable = false;
      rust.enable = false;
      python.enable = false;
    };
    editors = {
      default = "nvim";
      emacs.enable = false;
      vim.enable = true;
    };
    shell = {
      adl.enable = false;
      vaultwarden.enable = false;
      direnv.enable = true;
      git.enable    = true;
      gnupg.enable  = false;
      tmux.enable   = false;
      zsh.enable    = true;
    };
    services = {
      ssh.enable = true;
      docker.enable = false;
      # Needed occasionally to help the parental units with PC problems
      # teamviewer.enable = true;
    };
    theme.active = "alucard";
  };


  ## Local config
  programs.ssh.startAgent = true;
  services.openssh.startWhenNeeded = true;

  networking.networkmanager.enable = true;


}
