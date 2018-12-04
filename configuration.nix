# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).
with builtins;
{ config, pkgs, ... }:

{
  imports = [./hardware-configuration.nix];

  # Use the systemd-boot EFI boot loader.
  boot.loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
  };


  # networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  i18n = {
    consoleFont = "Lat2-Terminus16";
    consoleKeyMap = "colemak/en-latin9";
    defaultLocale = "en_US.UTF-8";
  };

  time.timeZone = "Americal/New_York";

  nixpkgs.config.allowUnfree = true;
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    (import ./vim.nix) fasd firefox google-chrome p7zip vlc git htop nix-prefetch-scripts wget which cabal-install haskell.compiler.ghc862 tree xclip ag
  ];

  programs.bash.interactiveShellInit = readFile ./.bashrc;


  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = { enable = true; enableSSHSupport = true; };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;
    layout = "us";
    xkbVariant = "colemak";
    xkbOptions = "ctrl:swapcaps";
    desktopManager = {
      default = "none";
      xterm.enable = false;
      xfce = {
        enable = true;
        noDesktop = true;

        enableXfwm = false;
      };
    };
    windowManager.i3.enable = true;
#    windowManager.xmonad.enable = true;
  };

  users.users.dai = {
    isNormalUser = true;
    home = "/home/dai";
    description = "Dai";
    createHome = true;
    extraGroups = ["wheel" "video" "audio" "disk"];
    uid = 1000;
    hashedPassword = "$6$uvxt/7jE6pVoXzi$7YGKIfYx608iVGisaIDm/CxF3b8luQAZy92FQvXsLDyjxP9x5N13hk2yeMRPKuP.sjxC0xKEl/uiHxqXVSPa00";
  };

  system.stateVersion = "18.09"; # Only change when NixOS release notes say so.
}
